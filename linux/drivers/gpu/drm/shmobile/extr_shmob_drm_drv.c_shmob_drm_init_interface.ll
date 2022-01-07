; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_drv.c_shmob_drm_init_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_drv.c_shmob_drm_init_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_device = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@shmob_drm_init_interface.ldmt1r = internal constant [147 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 147, i32 182, i32 183, i32 182, i32 183, i32 190, i32 191, i32 190, i32 191, i32 190, i32 191, i32 190, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165], align 16
@.str = private unnamed_addr constant [27 x i8] c"invalid interface type %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shmob_drm_device*)* @shmob_drm_init_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_init_interface(%struct.shmob_drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shmob_drm_device*, align 8
  store %struct.shmob_drm_device* %0, %struct.shmob_drm_device** %3, align 8
  %4 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %5 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([147 x i32], [147 x i32]* @shmob_drm_init_interface.ldmt1r, i64 0, i64 0))
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [147 x i32], [147 x i32]* @shmob_drm_init_interface.ldmt1r, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %35 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %25, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
