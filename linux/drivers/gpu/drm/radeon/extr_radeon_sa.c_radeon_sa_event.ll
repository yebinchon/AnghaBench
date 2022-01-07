; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_sa_manager = type { i32* }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_sa_manager*, i32, i32)* @radeon_sa_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_sa_event(%struct.radeon_sa_manager* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_sa_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_sa_manager* %0, %struct.radeon_sa_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %27, %3
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %51

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %32 = call i32 @radeon_sa_bo_hole_soffset(%struct.radeon_sa_manager* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %5, align 8
  %34 = call i32 @radeon_sa_bo_hole_eoffset(%struct.radeon_sa_manager* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = urem i32 %36, %37
  %39 = sub i32 %35, %38
  %40 = load i32, i32* %7, align 4
  %41 = urem i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %45, %46
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %51

50:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %25
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @radeon_sa_bo_hole_soffset(%struct.radeon_sa_manager*) #1

declare dso_local i32 @radeon_sa_bo_hole_eoffset(%struct.radeon_sa_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
