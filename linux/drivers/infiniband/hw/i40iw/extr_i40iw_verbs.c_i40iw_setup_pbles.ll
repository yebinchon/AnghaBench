; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_setup_pbles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_setup_pbles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, i32 }
%struct.i40iw_mr = type { i32*, i32, %struct.i40iw_pbl }
%struct.i40iw_pbl = type { i32, %struct.i40iw_pble_alloc }
%struct.i40iw_pble_alloc = type { i32, %struct.TYPE_2__, %struct.i40iw_pble_info }
%struct.TYPE_2__ = type { %struct.i40iw_pble_info* }
%struct.i40iw_pble_info = type { i64 }

@I40IW_LEVEL_1 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_mr*, i32)* @i40iw_setup_pbles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_setup_pbles(%struct.i40iw_device* %0, %struct.i40iw_mr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca %struct.i40iw_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_pbl*, align 8
  %9 = alloca %struct.i40iw_pble_alloc*, align 8
  %10 = alloca %struct.i40iw_pble_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store %struct.i40iw_mr* %1, %struct.i40iw_mr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %15 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %14, i32 0, i32 2
  store %struct.i40iw_pbl* %15, %struct.i40iw_pbl** %8, align 8
  %16 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %17 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %16, i32 0, i32 1
  store %struct.i40iw_pble_alloc* %17, %struct.i40iw_pble_alloc** %9, align 8
  %18 = load i32, i32* @I40IW_LEVEL_1, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %3
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %26 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %25, i32 0, i32 2
  %27 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %28 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %9, align 8
  %31 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %32 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @i40iw_get_pble(i32* %26, i32 %29, %struct.i40iw_pble_alloc* %30, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %36 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %85

43:                                               ; preds = %21
  %44 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %45 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %9, align 8
  %47 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @I40IW_LEVEL_1, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %9, align 8
  %54 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %53, i32 0, i32 2
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %9, align 8
  %57 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %58, align 8
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi %struct.i40iw_pble_info* [ %54, %52 ], [ %59, %55 ]
  store %struct.i40iw_pble_info* %61, %struct.i40iw_pble_info** %10, align 8
  %62 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %10, align 8
  %63 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %11, align 8
  br label %70

66:                                               ; preds = %3
  %67 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %68 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %11, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @i40iw_copy_user_pgaddrs(%struct.i40iw_mr* %71, i32* %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.i40iw_mr*, %struct.i40iw_mr** %6, align 8
  %81 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %70
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %40
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i40iw_get_pble(i32*, i32, %struct.i40iw_pble_alloc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i40iw_copy_user_pgaddrs(%struct.i40iw_mr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
