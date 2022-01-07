; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { i32, i32, i32, %struct.pcmidi_sustain*, i64 }
%struct.pcmidi_sustain = type { i32, i8, i8, i8, i32 }

@PCMIDI_MIDDLE_C = common dso_local global i8 0, align 1
@PCMIDI_SUSTAINED_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmidi_snd*, i8*, i32)* @pcmidi_handle_report3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmidi_handle_report3(%struct.pcmidi_snd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmidi_snd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmidi_sustain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %134, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %137

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = mul i32 %24, 2
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %12, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = mul i32 %31, 2
  %33 = add i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %13, align 1
  %37 = load i8, i8* %12, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp slt i32 %38, 129
  br i1 %39, label %40, label %63

40:                                               ; preds = %22
  %41 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %42 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 144, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %11, align 1
  %46 = load i8, i8* %12, align 1
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %47, 84
  %49 = load i8, i8* @PCMIDI_MIDDLE_C, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %48, %50
  %52 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %53 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 12
  %56 = add nsw i32 %51, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %12, align 1
  %58 = load i8, i8* %13, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 0, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  store i8 1, i8* %13, align 1
  br label %62

62:                                               ; preds = %61, %40
  br label %128

63:                                               ; preds = %22
  %64 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %65 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 128, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %11, align 1
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %70, 148
  %72 = load i8, i8* @PCMIDI_MIDDLE_C, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %71, %73
  %75 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %76 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 12
  %79 = add nsw i32 %74, %78
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %12, align 1
  %81 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %82 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %127

85:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %123, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @PCMIDI_SUSTAINED_MAX, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %86
  %91 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %92 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %91, i32 0, i32 3
  %93 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %93, i64 %95
  store %struct.pcmidi_sustain* %96, %struct.pcmidi_sustain** %8, align 8
  %97 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %8, align 8
  %98 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %90
  %102 = load i8, i8* %11, align 1
  %103 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %8, align 8
  %104 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %103, i32 0, i32 1
  store i8 %102, i8* %104, align 4
  %105 = load i8, i8* %12, align 1
  %106 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %8, align 8
  %107 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %106, i32 0, i32 2
  store i8 %105, i8* %107, align 1
  %108 = load i8, i8* %13, align 1
  %109 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %8, align 8
  %110 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %109, i32 0, i32 3
  store i8 %108, i8* %110, align 2
  %111 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %8, align 8
  %112 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  %113 = load %struct.pcmidi_sustain*, %struct.pcmidi_sustain** %8, align 8
  %114 = getelementptr inbounds %struct.pcmidi_sustain, %struct.pcmidi_sustain* %113, i32 0, i32 4
  %115 = load i64, i64* @jiffies, align 8
  %116 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %117 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @msecs_to_jiffies(i32 %118)
  %120 = add nsw i64 %115, %119
  %121 = call i32 @mod_timer(i32* %114, i64 %120)
  store i32 1, i32* %4, align 4
  br label %138

122:                                              ; preds = %90
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %86

126:                                              ; preds = %86
  br label %127

127:                                              ; preds = %126, %63
  br label %128

128:                                              ; preds = %127, %62
  %129 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %5, align 8
  %130 = load i8, i8* %11, align 1
  %131 = load i8, i8* %12, align 1
  %132 = load i8, i8* %13, align 1
  %133 = call i32 @pcmidi_send_note(%struct.pcmidi_snd* %129, i8 zeroext %130, i8 zeroext %131, i8 zeroext %132)
  br label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %10, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %18

137:                                              ; preds = %18
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %101
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pcmidi_send_note(%struct.pcmidi_snd*, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
