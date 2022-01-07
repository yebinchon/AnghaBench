; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_setkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32, i32, i32 }
%struct.ati_remote2 = type { i32** }

@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@ATI_REMOTE2_MODES = common dso_local global i32 0, align 4
@ati_remote2_key_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATI_REMOTE2_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* @ati_remote2_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote2_setkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_keymap_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ati_remote2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = call %struct.ati_remote2* @input_get_drvdata(%struct.input_dev* %13)
  store %struct.ati_remote2* %14, %struct.ati_remote2** %8, align 8
  %15 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %16 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %23 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATI_REMOTE2_MODES, align 4
  %26 = load i32, i32* @ati_remote2_key_table, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = mul i32 %25, %27
  %29 = icmp uge i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %146

33:                                               ; preds = %21
  %34 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %35 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ati_remote2_key_table, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = udiv i32 %36, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %41 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ati_remote2_key_table, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = urem i32 %42, %44
  store i32 %45, i32* %10, align 4
  br label %72

46:                                               ; preds = %3
  %47 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %48 = call i64 @input_scancode_to_scalar(%struct.input_keymap_entry* %47, i32* %12)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %146

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = lshr i32 %54, 8
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ATI_REMOTE2_PC, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %146

62:                                               ; preds = %53
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 255
  %65 = call i32 @ati_remote2_lookup(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %146

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %33
  %73 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %74 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %86 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %89 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %87, i32* %97, align 4
  %98 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %99 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @__set_bit(i32 %100, i32 %103)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %136, %72
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @ATI_REMOTE2_MODES, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %132, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @ati_remote2_key_table, align 4
  %113 = call i32 @ARRAY_SIZE(i32 %112)
  %114 = icmp ult i32 %111, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %110
  %116 = load %struct.ati_remote2*, %struct.ati_remote2** %8, align 8
  %117 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %146

131:                                              ; preds = %115
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %110

135:                                              ; preds = %110
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %105

139:                                              ; preds = %105
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @__clear_bit(i32 %141, i32 %144)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %139, %130, %68, %59, %50, %30
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.ati_remote2* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @ati_remote2_lookup(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
