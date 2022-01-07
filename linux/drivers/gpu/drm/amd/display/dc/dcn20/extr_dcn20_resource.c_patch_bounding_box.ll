; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_patch_bounding_box.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_patch_bounding_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct._vcs_dpi_soc_bounding_box_st = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct._vcs_dpi_soc_bounding_box_st*)* @patch_bounding_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_bounding_box(%struct.dc* %0, %struct._vcs_dpi_soc_bounding_box_st* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct._vcs_dpi_soc_bounding_box_st*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct._vcs_dpi_soc_bounding_box_st* %1, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %5 = call i32 (...) @kernel_fpu_begin()
  %6 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %7 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %8, 1000
  %10 = load %struct.dc*, %struct.dc** %3, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %9, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.dc*, %struct.dc** %3, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.dc*, %struct.dc** %3, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 1.000000e+03
  %28 = fptosi double %27 to i32
  %29 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %30 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %21, %15, %2
  %32 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %33 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = load %struct.dc*, %struct.dc** %3, align 8
  %37 = getelementptr inbounds %struct.dc, %struct.dc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %31
  %42 = load %struct.dc*, %struct.dc** %3, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.dc*, %struct.dc** %3, align 8
  %49 = getelementptr inbounds %struct.dc, %struct.dc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 1.000000e+03
  %54 = fptosi double %53 to i32
  %55 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %56 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %47, %41, %31
  %58 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %59 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = load %struct.dc*, %struct.dc** %3, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %57
  %68 = load %struct.dc*, %struct.dc** %3, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.dc*, %struct.dc** %3, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %78, 1.000000e+03
  %80 = fptosi double %79 to i32
  %81 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %82 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %73, %67, %57
  %84 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %85 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 1000
  %88 = load %struct.dc*, %struct.dc** %3, align 8
  %89 = getelementptr inbounds %struct.dc, %struct.dc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %83
  %94 = load %struct.dc*, %struct.dc** %3, align 8
  %95 = getelementptr inbounds %struct.dc, %struct.dc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load %struct.dc*, %struct.dc** %3, align 8
  %101 = getelementptr inbounds %struct.dc, %struct.dc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %104, 1.000000e+03
  %106 = fptosi double %105 to i32
  %107 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %4, align 8
  %108 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %99, %93, %83
  %110 = call i32 (...) @kernel_fpu_end()
  ret void
}

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
