; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hda.c_tegra_hda_parse_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hda.c_tegra_hda_parse_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hda_format = type { i32, i32, i32, i32 }

@AC_FMT_TYPE_NON_PCM = common dso_local global i32 0, align 4
@AC_FMT_BASE_44K = common dso_local global i32 0, align 4
@AC_FMT_MULT_MASK = common dso_local global i32 0, align 4
@AC_FMT_MULT_SHIFT = common dso_local global i32 0, align 4
@AC_FMT_DIV_MASK = common dso_local global i32 0, align 4
@AC_FMT_DIV_SHIFT = common dso_local global i32 0, align 4
@AC_FMT_BITS_MASK = common dso_local global i32 0, align 4
@AC_FMT_BITS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid number of bits: %#x\0A\00", align 1
@AC_FMT_CHAN_MASK = common dso_local global i32 0, align 4
@AC_FMT_CHAN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_hda_parse_format(i32 %0, %struct.tegra_hda_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_hda_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tegra_hda_format* %1, %struct.tegra_hda_format** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @AC_FMT_TYPE_NON_PCM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AC_FMT_BASE_44K, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %25, i32 0, i32 1
  store i32 44100, i32* %26, align 4
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %28, i32 0, i32 1
  store i32 48000, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @AC_FMT_MULT_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @AC_FMT_MULT_SHIFT, align 4
  %35 = lshr i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @AC_FMT_DIV_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @AC_FMT_DIV_SHIFT, align 4
  %40 = lshr i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  %45 = udiv i32 %42, %44
  %46 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @AC_FMT_BITS_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %68 [
    i32 128, label %53
    i32 132, label %56
    i32 131, label %59
    i32 130, label %62
    i32 129, label %65
  ]

53:                                               ; preds = %30
  %54 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %54, i32 0, i32 2
  store i32 8, i32* %55, align 4
  br label %78

56:                                               ; preds = %30
  %57 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %57, i32 0, i32 2
  store i32 16, i32* %58, align 4
  br label %78

59:                                               ; preds = %30
  %60 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %60, i32 0, i32 2
  store i32 20, i32* %61, align 4
  br label %78

62:                                               ; preds = %30
  %63 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %63, i32 0, i32 2
  store i32 24, i32* %64, align 4
  br label %78

65:                                               ; preds = %30
  %66 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %66, i32 0, i32 2
  store i32 32, i32* %67, align 4
  br label %78

68:                                               ; preds = %30
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @AC_FMT_BITS_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @AC_FMT_BITS_SHIFT, align 4
  %73 = lshr i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %76, i32 0, i32 2
  store i32 8, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %65, %62, %59, %56, %53
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @AC_FMT_CHAN_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @AC_FMT_CHAN_SHIFT, align 4
  %83 = lshr i32 %81, %82
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  %86 = load %struct.tegra_hda_format*, %struct.tegra_hda_format** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_hda_format, %struct.tegra_hda_format* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
