; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_altfunc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_stmpe-keypad.c_stmpe_keypad_altfunc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe_keypad = type { i32, i32, %struct.stmpe*, %struct.stmpe_keypad_variant* }
%struct.stmpe = type { i32* }
%struct.stmpe_keypad_variant = type { i32, i32, i32, i32, i64 }

@STMPE_IDX_GPPUR_LSB = common dso_local global i64 0, align 8
@STMPE_BLOCK_KEYPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe_keypad*)* @stmpe_keypad_altfunc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_keypad_altfunc_init(%struct.stmpe_keypad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe_keypad*, align 8
  %4 = alloca %struct.stmpe_keypad_variant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmpe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.stmpe_keypad* %0, %struct.stmpe_keypad** %3, align 8
  %16 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %17 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %16, i32 0, i32 3
  %18 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %17, align 8
  store %struct.stmpe_keypad_variant* %18, %struct.stmpe_keypad_variant** %4, align 8
  %19 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %4, align 8
  %20 = getelementptr inbounds %struct.stmpe_keypad_variant, %struct.stmpe_keypad_variant* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %4, align 8
  %23 = getelementptr inbounds %struct.stmpe_keypad_variant, %struct.stmpe_keypad_variant* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %26 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %25, i32 0, i32 2
  %27 = load %struct.stmpe*, %struct.stmpe** %26, align 8
  store %struct.stmpe* %27, %struct.stmpe** %7, align 8
  %28 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %29 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @STMPE_IDX_GPPUR_LSB, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %65, %1
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %4, align 8
  %37 = getelementptr inbounds %struct.stmpe_keypad_variant, %struct.stmpe_keypad_variant* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @__ffs(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %44 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %13, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %50, %40
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %34

68:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %96, %68
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %4, align 8
  %72 = getelementptr inbounds %struct.stmpe_keypad_variant, %struct.stmpe_keypad_variant* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @__ffs(i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.stmpe_keypad*, %struct.stmpe_keypad** %3, align 8
  %79 = getelementptr inbounds %struct.stmpe_keypad, %struct.stmpe_keypad* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load i32, i32* %14, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %85, %75
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %69

99:                                               ; preds = %69
  %100 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @STMPE_BLOCK_KEYPAD, align 4
  %103 = call i32 @stmpe_set_altfunc(%struct.stmpe* %100, i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %2, align 4
  br label %134

108:                                              ; preds = %99
  %109 = load %struct.stmpe_keypad_variant*, %struct.stmpe_keypad_variant** %4, align 8
  %110 = getelementptr inbounds %struct.stmpe_keypad_variant, %struct.stmpe_keypad_variant* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %108
  %114 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @stmpe_reg_read(%struct.stmpe* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %2, align 4
  br label %134

121:                                              ; preds = %113
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %15, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %15, align 4
  %129 = load %struct.stmpe*, %struct.stmpe** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @stmpe_reg_write(%struct.stmpe* %129, i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %121, %108
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %119, %106
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @stmpe_set_altfunc(%struct.stmpe*, i32, i32) #1

declare dso_local i32 @stmpe_reg_read(%struct.stmpe*, i32) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
