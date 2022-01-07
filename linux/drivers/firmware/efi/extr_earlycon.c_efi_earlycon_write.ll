; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_earlycon.c_efi_earlycon_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_earlycon.c_efi_earlycon_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.console = type { i32 }

@screen_info = common dso_local global %struct.screen_info zeroinitializer, align 4
@efi_x = common dso_local global i32 0, align 4
@font = common dso_local global %struct.TYPE_2__* null, align 8
@efi_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @efi_earlycon_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_earlycon_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.screen_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.screen_info* @screen_info, %struct.screen_info** %7, align 8
  %17 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %18 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %193, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %194

23:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %45, %23
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 10
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  br label %25

48:                                               ; preds = %41, %35
  %49 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %50 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @efi_x, align 4
  %53 = sub i32 %51, %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = udiv i32 %53, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %48
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %110, %63
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %64
  %71 = load i32, i32* @efi_y, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = mul i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = call i8* @efi_earlycon_map(i32 %75, i32 %76)
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %194

81:                                               ; preds = %70
  %82 = load i8*, i8** %5, align 8
  store i8* %82, i8** %9, align 8
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* @efi_x, align 4
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %89, %81
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %14, align 4
  %88 = icmp ugt i32 %86, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %15, align 4
  %92 = mul i32 %91, 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr i8, i8* %90, i64 %93
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @efi_earlycon_write_char(i8* %94, i8 signext %96, i32 %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  br label %85

106:                                              ; preds = %85
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @efi_earlycon_unmap(i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %12, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %64

113:                                              ; preds = %64
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %117, %120
  %122 = load i32, i32* @efi_x, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* @efi_x, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i8*, i8** %5, align 8
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = icmp ugt i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %113
  %131 = load i8*, i8** %9, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 10
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  store i32 0, i32* @efi_x, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @efi_y, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* @efi_y, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = add i32 %143, -1
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %135, %130, %113
  %146 = load i32, i32* @efi_x, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %146, %149
  %151 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %152 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ugt i32 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %145
  store i32 0, i32* @efi_x, align 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @efi_y, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* @efi_y, align 4
  br label %161

161:                                              ; preds = %155, %145
  %162 = load i32, i32* @efi_y, align 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %162, %165
  %167 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %168 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp ugt i32 %166, %169
  br i1 %170, label %171, label %193

171:                                              ; preds = %161
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @efi_y, align 4
  %176 = sub i32 %175, %174
  store i32 %176, i32* @efi_y, align 4
  %177 = call i32 (...) @efi_earlycon_scroll_up()
  store i32 0, i32* %16, align 4
  br label %178

178:                                              ; preds = %189, %171
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @font, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ult i32 %179, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %178
  %185 = load i32, i32* @efi_y, align 4
  %186 = load i32, i32* %16, align 4
  %187 = add i32 %185, %186
  %188 = call i32 @efi_earlycon_clear_scanline(i32 %187)
  br label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %16, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %178

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %161
  br label %20

194:                                              ; preds = %80, %20
  ret void
}

declare dso_local i8* @efi_earlycon_map(i32, i32) #1

declare dso_local i32 @efi_earlycon_write_char(i8*, i8 signext, i32) #1

declare dso_local i32 @efi_earlycon_unmap(i8*, i32) #1

declare dso_local i32 @efi_earlycon_scroll_up(...) #1

declare dso_local i32 @efi_earlycon_clear_scanline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
