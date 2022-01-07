; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_try_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_try_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_sa_manager = type { i32* }
%struct.radeon_sa_bo = type { i32, i32, i32, i32, %struct.radeon_sa_manager* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_sa_manager*, %struct.radeon_sa_bo*, i32, i32)* @radeon_sa_bo_try_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_sa_bo_try_alloc(%struct.radeon_sa_manager* %0, %struct.radeon_sa_bo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_sa_manager*, align 8
  %7 = alloca %struct.radeon_sa_bo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_sa_manager* %0, %struct.radeon_sa_manager** %6, align 8
  store %struct.radeon_sa_bo* %1, %struct.radeon_sa_bo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %6, align 8
  %14 = call i32 @radeon_sa_bo_hole_soffset(%struct.radeon_sa_manager* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %6, align 8
  %16 = call i32 @radeon_sa_bo_hole_eoffset(%struct.radeon_sa_manager* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = urem i32 %18, %19
  %21 = sub i32 %17, %20
  %22 = load i32, i32* %9, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sub i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %12, align 4
  %29 = add i32 %27, %28
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %6, align 8
  %36 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %7, align 8
  %37 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %36, i32 0, i32 4
  store %struct.radeon_sa_manager* %35, %struct.radeon_sa_manager** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %41, %42
  %44 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %7, align 8
  %45 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %7, align 8
  %47 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %46, i32 0, i32 2
  %48 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @list_add(i32* %47, i32* %50)
  %52 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %7, align 8
  %53 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %52, i32 0, i32 3
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.radeon_sa_bo*, %struct.radeon_sa_bo** %7, align 8
  %56 = getelementptr inbounds %struct.radeon_sa_bo, %struct.radeon_sa_bo* %55, i32 0, i32 2
  %57 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %6, align 8
  %58 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  store i32 1, i32* %5, align 4
  br label %60

59:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @radeon_sa_bo_hole_soffset(%struct.radeon_sa_manager*) #1

declare dso_local i32 @radeon_sa_bo_hole_eoffset(%struct.radeon_sa_manager*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
