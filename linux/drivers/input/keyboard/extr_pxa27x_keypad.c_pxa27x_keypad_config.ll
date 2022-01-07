; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i32, %struct.pxa27x_keypad_platform_data* }
%struct.pxa27x_keypad_platform_data = type { i32, i32, i64, i64, i64, i64, i64 }

@KPC = common dso_local global i32 0, align 4
@KPC_ASACT = common dso_local global i64 0, align 8
@KPC_MIE = common dso_local global i64 0, align 8
@KPC_ME = common dso_local global i64 0, align 8
@KPC_MS_ALL = common dso_local global i64 0, align 8
@KPC_REE0 = common dso_local global i64 0, align 8
@KPC_REE1 = common dso_local global i64 0, align 8
@KPC_DE = common dso_local global i64 0, align 8
@KPC_DIE = common dso_local global i64 0, align 8
@KPC_RE_ZERO_DEB = common dso_local global i64 0, align 8
@KPREC = common dso_local global i32 0, align 4
@DEFAULT_KPREC = common dso_local global i64 0, align 8
@KPKDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa27x_keypad*)* @pxa27x_keypad_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_keypad_config(%struct.pxa27x_keypad* %0) #0 {
  %2 = alloca %struct.pxa27x_keypad*, align 8
  %3 = alloca %struct.pxa27x_keypad_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pxa27x_keypad* %0, %struct.pxa27x_keypad** %2, align 8
  %7 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %8 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %7, i32 0, i32 1
  %9 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %8, align 8
  store %struct.pxa27x_keypad_platform_data* %9, %struct.pxa27x_keypad_platform_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @KPC, align 4
  %11 = call i32 @keypad_readl(i32 %10)
  %12 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %13 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  %17 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %18 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i64, i64* @KPC_ASACT, align 8
  %23 = load i64, i64* @KPC_MIE, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @KPC_ME, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @KPC_MS_ALL, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %32 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @KPC_MKRN(i64 %33)
  %35 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %36 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @KPC_MKCN(i64 %37)
  %39 = or i64 %34, %38
  %40 = load i64, i64* %6, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %21, %16, %1
  %43 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %44 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, 3
  store i32 %49, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %50 = load i64, i64* @KPC_REE0, align 8
  %51 = load i64, i64* %6, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %55 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, 12
  store i32 %60, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %61 = load i64, i64* @KPC_REE1, align 8
  %62 = load i64, i64* %6, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %66 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %72 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %76 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %81 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %84 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %94

85:                                               ; preds = %74
  %86 = load i32, i32* %5, align 4
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %4, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %93 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %85, %79
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i64, i64* @KPC_DE, align 8
  %99 = load i64, i64* @KPC_DIE, align 8
  %100 = or i64 %98, %99
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @KPC_DKN(i32 %101)
  %103 = or i64 %100, %102
  %104 = load i64, i64* %6, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i32, i32* @KPC, align 4
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @KPC_RE_ZERO_DEB, align 8
  %110 = or i64 %108, %109
  %111 = call i32 @keypad_writel(i32 %107, i64 %110)
  %112 = load i32, i32* @KPREC, align 4
  %113 = load i64, i64* @DEFAULT_KPREC, align 8
  %114 = call i32 @keypad_writel(i32 %112, i64 %113)
  %115 = load i32, i32* @KPKDI, align 4
  %116 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %117 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @keypad_writel(i32 %115, i64 %118)
  ret void
}

declare dso_local i32 @keypad_readl(i32) #1

declare dso_local i64 @KPC_MKRN(i64) #1

declare dso_local i64 @KPC_MKCN(i64) #1

declare dso_local i64 @KPC_DKN(i32) #1

declare dso_local i32 @keypad_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
