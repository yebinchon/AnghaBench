; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_default_setkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_default_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, i64 }
%struct.input_keymap_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* @input_default_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_default_setkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_keymap_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %165

21:                                               ; preds = %3
  %22 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %23 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %30 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %21
  %33 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %34 = call i32 @input_scancode_to_scalar(%struct.input_keymap_entry* %33, i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %165

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp uge i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %165

49:                                               ; preds = %40
  %50 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 4
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %57 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 8
  %63 = ashr i32 %58, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %165

68:                                               ; preds = %55, %49
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %108 [
    i32 1, label %72
    i32 2, label %90
  ]

72:                                               ; preds = %68
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %84 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %126

90:                                               ; preds = %68
  %91 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %12, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %102 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %126

108:                                              ; preds = %68
  %109 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %110 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %13, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %120 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %108, %90, %72
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %130 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @__clear_bit(i32 %128, i32 %131)
  %133 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %134 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @__set_bit(i32 %135, i32 %138)
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %161, %126
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %140
  %147 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @input_fetch_keycode(%struct.input_dev* %147, i32 %148)
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %157 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @__set_bit(i32 %155, i32 %158)
  br label %164

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %140

164:                                              ; preds = %153, %140
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %65, %46, %37, %18
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_fetch_keycode(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
