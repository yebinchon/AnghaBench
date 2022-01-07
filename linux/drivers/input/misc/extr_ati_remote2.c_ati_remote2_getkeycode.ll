; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_getkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_getkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32, i32, i32, i32, i32 }
%struct.ati_remote2 = type { i32** }

@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@ATI_REMOTE2_MODES = common dso_local global i32 0, align 4
@ati_remote2_key_table = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATI_REMOTE2_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*)* @ati_remote2_getkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote2_getkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca %struct.ati_remote2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = call %struct.ati_remote2* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.ati_remote2* %12, %struct.ati_remote2** %6, align 8
  %13 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %14 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %21 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ATI_REMOTE2_MODES, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ati_remote2_key_table, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %25)
  %27 = mul i32 %24, %26
  %28 = icmp uge i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %108

32:                                               ; preds = %19
  %33 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %34 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ati_remote2_key_table, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %36)
  %38 = udiv i32 %35, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %40 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ati_remote2_key_table, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %42)
  %44 = urem i32 %41, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ati_remote2_key_table, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %46, %52
  store i32 %53, i32* %10, align 4
  br label %86

54:                                               ; preds = %2
  %55 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %56 = call i64 @input_scancode_to_scalar(%struct.input_keymap_entry* %55, i32* %10)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %108

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = lshr i32 %62, 8
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ATI_REMOTE2_PC, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %108

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 255
  %73 = call i32 @ati_remote2_lookup(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %108

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ati_remote2_key_table, align 8
  %82 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %81)
  %83 = mul i32 %80, %82
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %83, %84
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %79, %32
  %87 = load %struct.ati_remote2*, %struct.ati_remote2** %6, align 8
  %88 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %99 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %101 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %100, i32 0, i32 2
  store i32 4, i32* %101, align 4
  %102 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %103 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %102, i32 0, i32 3
  %104 = call i32 @memcpy(i32* %103, i32* %10, i32 4)
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %107 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %86, %76, %67, %58, %29
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.ati_remote2* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @ati_remote2_lookup(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
