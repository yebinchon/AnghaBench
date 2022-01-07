; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_get_csb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_get_csb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i64, i32* }

@SECT_CONTEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_get_csb_size(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_section_def*, align 8
  %6 = alloca %struct.cs_extent_def*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.cs_section_def* null, %struct.cs_section_def** %5, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %6, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.cs_section_def*, %struct.cs_section_def** %9, align 8
  %11 = icmp eq %struct.cs_section_def* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 3
  store i32 %17, i32* %4, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.cs_section_def*, %struct.cs_section_def** %20, align 8
  store %struct.cs_section_def* %21, %struct.cs_section_def** %5, align 8
  br label %22

22:                                               ; preds = %57, %13
  %23 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %24 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %23, i32 0, i32 1
  %25 = load %struct.cs_extent_def*, %struct.cs_extent_def** %24, align 8
  %26 = icmp ne %struct.cs_extent_def* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %29 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %28, i32 0, i32 1
  %30 = load %struct.cs_extent_def*, %struct.cs_extent_def** %29, align 8
  store %struct.cs_extent_def* %30, %struct.cs_extent_def** %6, align 8
  br label %31

31:                                               ; preds = %53, %27
  %32 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %33 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %38 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SECT_CONTEXT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %44 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 2, %45
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %68

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %55 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %54, i32 1
  store %struct.cs_extent_def* %55, %struct.cs_extent_def** %6, align 8
  br label %31

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %59 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %58, i32 1
  store %struct.cs_section_def* %59, %struct.cs_section_def** %5, align 8
  br label %22

60:                                               ; preds = %22
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 3
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %51, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
