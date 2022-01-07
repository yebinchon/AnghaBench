; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_program_mnp_slide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gk20a.c_gk20a_pllg_program_mnp_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_clk = type { i32 }
%struct.gk20a_pll = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk20a_clk*, %struct.gk20a_pll*)* @gk20a_pllg_program_mnp_slide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_pllg_program_mnp_slide(%struct.gk20a_clk* %0, %struct.gk20a_pll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk20a_clk*, align 8
  %5 = alloca %struct.gk20a_pll*, align 8
  %6 = alloca %struct.gk20a_pll, align 8
  %7 = alloca i32, align 4
  store %struct.gk20a_clk* %0, %struct.gk20a_clk** %4, align 8
  store %struct.gk20a_pll* %1, %struct.gk20a_pll** %5, align 8
  %8 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %9 = call i64 @gk20a_pllg_is_enabled(%struct.gk20a_clk* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %13 = call i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk* %12, %struct.gk20a_pll* %6)
  %14 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %15 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %22 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %29 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %30 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @gk20a_pllg_slide(%struct.gk20a_clk* %28, i8* %31)
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %20, %11
  %34 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %35 = call i8* @gk20a_pllg_n_lo(%struct.gk20a_clk* %34, %struct.gk20a_pll* %6)
  %36 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %38 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @gk20a_pllg_slide(%struct.gk20a_clk* %37, i8* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %48 = bitcast %struct.gk20a_pll* %6 to i8*
  %49 = bitcast %struct.gk20a_pll* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  %50 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %51 = call i8* @gk20a_pllg_n_lo(%struct.gk20a_clk* %50, %struct.gk20a_pll* %6)
  %52 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %54 = call i32 @gk20a_pllg_program_mnp(%struct.gk20a_clk* %53, %struct.gk20a_pll* %6)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %46
  %60 = load %struct.gk20a_clk*, %struct.gk20a_clk** %4, align 8
  %61 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %62 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @gk20a_pllg_slide(%struct.gk20a_clk* %60, i8* %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %57, %43, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @gk20a_pllg_is_enabled(%struct.gk20a_clk*) #1

declare dso_local i32 @gk20a_pllg_read_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

declare dso_local i32 @gk20a_pllg_slide(%struct.gk20a_clk*, i8*) #1

declare dso_local i8* @gk20a_pllg_n_lo(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gk20a_pllg_program_mnp(%struct.gk20a_clk*, %struct.gk20a_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
