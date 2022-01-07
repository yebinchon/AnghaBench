; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_alloc_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_alloc_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_device = type { i32, %struct.sp_device*, %struct.device* }
%struct.device = type { i32 }
%struct.sp_device = type { i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"psp-%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.psp_device* (%struct.sp_device*)* @psp_alloc_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.psp_device* @psp_alloc_struct(%struct.sp_device* %0) #0 {
  %2 = alloca %struct.psp_device*, align 8
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.psp_device*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %6 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %7 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.psp_device* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.psp_device* %11, %struct.psp_device** %5, align 8
  %12 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %13 = icmp ne %struct.psp_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.psp_device* null, %struct.psp_device** %2, align 8
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %18 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %17, i32 0, i32 2
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %20 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %21 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %20, i32 0, i32 1
  store %struct.sp_device* %19, %struct.sp_device** %21, align 8
  %22 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %23 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %26 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  store %struct.psp_device* %29, %struct.psp_device** %2, align 8
  br label %30

30:                                               ; preds = %15, %14
  %31 = load %struct.psp_device*, %struct.psp_device** %2, align 8
  ret %struct.psp_device* %31
}

declare dso_local %struct.psp_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
