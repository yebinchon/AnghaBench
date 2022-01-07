; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sa_manager = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"no bo for sa manager\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sa_bo_manager_suspend(%struct.radeon_device* %0, %struct.radeon_sa_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_sa_manager*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_sa_manager* %1, %struct.radeon_sa_manager** %5, align 8
  %7 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %8 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @radeon_bo_reserve(i32* %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @radeon_bo_kunmap(i32* %28)
  %30 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @radeon_bo_unpin(i32* %32)
  %34 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @radeon_bo_unreserve(i32* %36)
  br label %38

38:                                               ; preds = %25, %18
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i32 @radeon_bo_kunmap(i32*) #1

declare dso_local i32 @radeon_bo_unpin(i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
