; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32, %struct.a6xx_hfi_queue* }
%struct.a6xx_hfi_queue = type { i32 }

@HFI_COMMAND_QUEUE = common dso_local global i64 0, align 8
@HFI_MSG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to send message %s id %d\0A\00", align 1
@a6xx_hfi_msg_id = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*, i32, i8*, i32, i32*, i32)* @a6xx_hfi_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hfi_send_msg(%struct.a6xx_gmu* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.a6xx_gmu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.a6xx_hfi_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %8, align 8
  %19 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %18, i32 0, i32 1
  %20 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %19, align 8
  %21 = load i64, i64* @HFI_COMMAND_QUEUE, align 8
  %22 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %20, i64 %21
  store %struct.a6xx_hfi_queue* %22, %struct.a6xx_hfi_queue** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = ashr i32 %23, 2
  store i32 %24, i32* %16, align 4
  %25 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %14, align 8
  %26 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc_return(i32* %26)
  %28 = srem i32 %27, 4095
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = shl i32 %29, 20
  %31 = load i32, i32* @HFI_MSG_CMD, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = load i32, i32* %16, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %33, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %36, %37
  %39 = load i8*, i8** %10, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4
  %41 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %8, align 8
  %42 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %14, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @a6xx_hfi_queue_write(%struct.a6xx_gmu* %41, %struct.a6xx_hfi_queue* %42, i8* %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %6
  %49 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %8, align 8
  %50 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** @a6xx_hfi_msg_id, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @DRM_DEV_ERROR(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %67

60:                                               ; preds = %6
  %61 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @a6xx_hfi_wait_for_ack(%struct.a6xx_gmu* %61, i32 %62, i32 %63, i32* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %48
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @a6xx_hfi_queue_write(%struct.a6xx_gmu*, %struct.a6xx_hfi_queue*, i8*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @a6xx_hfi_wait_for_ack(%struct.a6xx_gmu*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
