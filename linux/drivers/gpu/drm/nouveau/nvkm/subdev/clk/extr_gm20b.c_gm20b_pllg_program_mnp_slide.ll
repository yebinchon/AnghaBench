; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_program_mnp_slide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_pllg_program_mnp_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { i32 }
%struct.gk20a_pll = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gm20b_clk*, %struct.gk20a_pll*)* @gm20b_pllg_program_mnp_slide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm20b_pllg_program_mnp_slide(%struct.gm20b_clk* %0, %struct.gk20a_pll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gm20b_clk*, align 8
  %5 = alloca %struct.gk20a_pll*, align 8
  %6 = alloca %struct.gk20a_pll, align 8
  %7 = alloca i32, align 4
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %4, align 8
  store %struct.gk20a_pll* %1, %struct.gk20a_pll** %5, align 8
  %8 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %9 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %8, i32 0, i32 0
  %10 = call i64 @gk20a_pllg_is_enabled(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %2
  %13 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %14 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %13, i32 0, i32 0
  %15 = call i32 @gk20a_pllg_read_mnp(i32* %14, %struct.gk20a_pll* %6)
  %16 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %17 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %12
  %23 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %24 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %31 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %32 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @gm20b_pllg_slide(%struct.gm20b_clk* %30, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %22, %12
  %36 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %37 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %36, i32 0, i32 0
  %38 = call i8* @gk20a_pllg_n_lo(i32* %37, %struct.gk20a_pll* %6)
  %39 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %41 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @gm20b_pllg_slide(%struct.gm20b_clk* %40, i8* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %51 = bitcast %struct.gk20a_pll* %6 to i8*
  %52 = bitcast %struct.gk20a_pll* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 24, i1 false)
  %53 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %54 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %53, i32 0, i32 0
  %55 = call i8* @gk20a_pllg_n_lo(i32* %54, %struct.gk20a_pll* %6)
  %56 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %6, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %58 = call i32 @gm20b_pllg_program_mnp(%struct.gm20b_clk* %57, %struct.gk20a_pll* %6)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %49
  %64 = load %struct.gm20b_clk*, %struct.gm20b_clk** %4, align 8
  %65 = load %struct.gk20a_pll*, %struct.gk20a_pll** %5, align 8
  %66 = getelementptr inbounds %struct.gk20a_pll, %struct.gk20a_pll* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @gm20b_pllg_slide(%struct.gm20b_clk* %64, i8* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %61, %46, %29
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @gk20a_pllg_is_enabled(i32*) #1

declare dso_local i32 @gk20a_pllg_read_mnp(i32*, %struct.gk20a_pll*) #1

declare dso_local i32 @gm20b_pllg_slide(%struct.gm20b_clk*, i8*) #1

declare dso_local i8* @gk20a_pllg_n_lo(i32*, %struct.gk20a_pll*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gm20b_pllg_program_mnp(%struct.gm20b_clk*, %struct.gk20a_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
