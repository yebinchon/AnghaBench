; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_keycode_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_set_keycode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.atkbd = type { i32, i32, i8**, i64, i64 }

@ATKBD_KEYMAP_SIZE = common dso_local global i32 0, align 4
@atkbd_unxlate_table = common dso_local global i32* null, align 8
@atkbd_set2_keycode = common dso_local global i8** null, align 8
@atkbd_scroll_keys = common dso_local global %struct.TYPE_3__* null, align 8
@atkbd_set3_keycode = common dso_local global i8** null, align 8
@ATKBD_RET_HANGEUL = common dso_local global i32 0, align 4
@KEY_HANGEUL = common dso_local global i8* null, align 8
@ATKBD_RET_HANJA = common dso_local global i32 0, align 4
@KEY_HANJA = common dso_local global i8* null, align 8
@atkbd_platform_fixup_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atkbd*)* @atkbd_set_keycode_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atkbd_set_keycode_table(%struct.atkbd* %0) #0 {
  %2 = alloca %struct.atkbd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atkbd* %0, %struct.atkbd** %2, align 8
  %6 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %7 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %6, i32 0, i32 2
  %8 = load i8**, i8*** %7, align 8
  %9 = call i32 @memset(i8** %8, i32 0, i32 8)
  %10 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %11 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATKBD_KEYMAP_SIZE, align 4
  %14 = call i32 @bitmap_zero(i32 %12, i32 %13)
  %15 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %16 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %93, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %96

23:                                               ; preds = %20
  %24 = load i32*, i32** @atkbd_unxlate_table, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i8**, i8*** @atkbd_set2_keycode, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %35 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* %33, i8** %39, align 8
  %40 = load i8**, i8*** @atkbd_set2_keycode, align 8
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, 128
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %47 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, 128
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  store i8* %45, i8** %52, align 8
  %53 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %54 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %88, %57
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @atkbd_scroll_keys, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, 128
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @atkbd_scroll_keys, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %65, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %63
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @atkbd_scroll_keys, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %81 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, 128
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  store i8* %79, i8** %86, align 8
  br label %87

87:                                               ; preds = %73, %63
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %58

91:                                               ; preds = %58
  br label %92

92:                                               ; preds = %91, %23
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %20

96:                                               ; preds = %20
  br label %149

97:                                               ; preds = %1
  %98 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %99 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %104 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = load i8**, i8*** @atkbd_set3_keycode, align 8
  %107 = call i32 @memcpy(i8** %105, i8** %106, i32 8)
  br label %148

108:                                              ; preds = %97
  %109 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %110 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = load i8**, i8*** @atkbd_set2_keycode, align 8
  %113 = call i32 @memcpy(i8** %111, i8** %112, i32 8)
  %114 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %115 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %143, %118
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @atkbd_scroll_keys, align 8
  %122 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %121)
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %119
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @atkbd_scroll_keys, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %3, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @atkbd_scroll_keys, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %138 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %137, i32 0, i32 2
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  br label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %119

146:                                              ; preds = %119
  br label %147

147:                                              ; preds = %146, %108
  br label %148

148:                                              ; preds = %147, %102
  br label %149

149:                                              ; preds = %148, %96
  %150 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %151 = load i32, i32* @ATKBD_RET_HANGEUL, align 4
  %152 = call i32 @atkbd_compat_scancode(%struct.atkbd* %150, i32 %151)
  store i32 %152, i32* %3, align 4
  %153 = load i8*, i8** @KEY_HANGEUL, align 8
  %154 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %155 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %154, i32 0, i32 2
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %153, i8** %159, align 8
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %162 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @__set_bit(i32 %160, i32 %163)
  %165 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %166 = load i32, i32* @ATKBD_RET_HANJA, align 4
  %167 = call i32 @atkbd_compat_scancode(%struct.atkbd* %165, i32 %166)
  store i32 %167, i32* %3, align 4
  %168 = load i8*, i8** @KEY_HANJA, align 8
  %169 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %170 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %169, i32 0, i32 2
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %168, i8** %174, align 8
  %175 = load i32, i32* %3, align 4
  %176 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %177 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @__set_bit(i32 %175, i32 %178)
  br i1 true, label %180, label %184

180:                                              ; preds = %149
  %181 = load %struct.atkbd*, %struct.atkbd** %2, align 8
  %182 = load i32, i32* @atkbd_platform_fixup_data, align 4
  %183 = call i32 @atkbd_platform_fixup(%struct.atkbd* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %149
  ret void
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @atkbd_compat_scancode(%struct.atkbd*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @atkbd_platform_fixup(%struct.atkbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
