; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { i32*, i32, i32, i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pcmidi mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"pcmidi mode: %d octave: %d\0A\00", align 1
@KEY_MESSENGER = common dso_local global i32 0, align 4
@KEY_CALENDAR = common dso_local global i32 0, align 4
@KEY_ADDRESSBOOK = common dso_local global i32 0, align 4
@KEY_DOCUMENTS = common dso_local global i32 0, align 4
@KEY_WORDPROCESSOR = common dso_local global i32 0, align 4
@KEY_SPREADSHEET = common dso_local global i32 0, align 4
@KEY_COFFEE = common dso_local global i32 0, align 4
@KEY_HELP = common dso_local global i32 0, align 4
@KEY_SEND = common dso_local global i32 0, align 4
@KEY_REPLY = common dso_local global i32 0, align 4
@KEY_FORWARDMAIL = common dso_local global i32 0, align 4
@KEY_NEW = common dso_local global i32 0, align 4
@KEY_OPEN = common dso_local global i32 0, align 4
@KEY_CLOSE = common dso_local global i32 0, align 4
@KEY_SAVE = common dso_local global i32 0, align 4
@KEY_UNDO = common dso_local global i32 0, align 4
@KEY_REDO = common dso_local global i32 0, align 4
@KEY_SPELLCHECK = common dso_local global i32 0, align 4
@KEY_PRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmidi_snd*, i32*)* @pcmidi_handle_report4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmidi_handle_report4(%struct.pcmidi_snd* %0, i32* %1) #0 {
  %3 = alloca %struct.pcmidi_snd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 8
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 %17, 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %52, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 24
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %26
  %33 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %34 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EV_KEY, align 4
  %37 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %38 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @input_event(i32 %35, i32 %36, i32 %43, i32 0)
  %45 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %46 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %32, %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %23

55:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %177, %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 24
  br i1 %58, label %59, label %180

59:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %61, %62
  switch i32 %63, label %159 [
    i32 16, label %64
    i32 131072, label %80
    i32 1048576, label %91
    i32 4194304, label %123
    i32 524288, label %125
    i32 262144, label %127
    i32 8388608, label %129
    i32 2097152, label %131
    i32 65536, label %133
    i32 256, label %135
    i32 512, label %137
    i32 1024, label %139
    i32 2048, label %141
    i32 4096, label %143
    i32 8192, label %145
    i32 16384, label %147
    i32 32768, label %149
    i32 1, label %151
    i32 2, label %153
    i32 4, label %155
    i32 8, label %157
  ]

64:                                               ; preds = %59
  %65 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %66 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = xor i32 %67, 16
  store i32 %68, i32* %66, align 8
  %69 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %70 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %75 = call i32 @pcmidi_submit_output_report(%struct.pcmidi_snd* %74, i32 197)
  br label %79

76:                                               ; preds = %64
  %77 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %78 = call i32 @pcmidi_submit_output_report(%struct.pcmidi_snd* %77, i32 198)
  br label %79

79:                                               ; preds = %76, %73
  br label %177

80:                                               ; preds = %59
  %81 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %82 = call i32 @pcmidi_submit_output_report(%struct.pcmidi_snd* %81, i32 193)
  %83 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %84 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %88 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i32, ...) @dbg_hid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %177

91:                                               ; preds = %59
  %92 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %93 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, ...) @dbg_hid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %97 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %91
  %101 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %102 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %106 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 2
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %111 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %110, i32 0, i32 3
  store i32 2, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %100
  %113 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %114 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %117 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, i32, ...) @dbg_hid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %118)
  br label %177

120:                                              ; preds = %91
  %121 = load i32, i32* @KEY_MESSENGER, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120
  br label %159

123:                                              ; preds = %59
  %124 = load i32, i32* @KEY_CALENDAR, align 4
  store i32 %124, i32* %5, align 4
  br label %159

125:                                              ; preds = %59
  %126 = load i32, i32* @KEY_ADDRESSBOOK, align 4
  store i32 %126, i32* %5, align 4
  br label %159

127:                                              ; preds = %59
  %128 = load i32, i32* @KEY_DOCUMENTS, align 4
  store i32 %128, i32* %5, align 4
  br label %159

129:                                              ; preds = %59
  %130 = load i32, i32* @KEY_WORDPROCESSOR, align 4
  store i32 %130, i32* %5, align 4
  br label %159

131:                                              ; preds = %59
  %132 = load i32, i32* @KEY_SPREADSHEET, align 4
  store i32 %132, i32* %5, align 4
  br label %159

133:                                              ; preds = %59
  %134 = load i32, i32* @KEY_COFFEE, align 4
  store i32 %134, i32* %5, align 4
  br label %159

135:                                              ; preds = %59
  %136 = load i32, i32* @KEY_HELP, align 4
  store i32 %136, i32* %5, align 4
  br label %159

137:                                              ; preds = %59
  %138 = load i32, i32* @KEY_SEND, align 4
  store i32 %138, i32* %5, align 4
  br label %159

139:                                              ; preds = %59
  %140 = load i32, i32* @KEY_REPLY, align 4
  store i32 %140, i32* %5, align 4
  br label %159

141:                                              ; preds = %59
  %142 = load i32, i32* @KEY_FORWARDMAIL, align 4
  store i32 %142, i32* %5, align 4
  br label %159

143:                                              ; preds = %59
  %144 = load i32, i32* @KEY_NEW, align 4
  store i32 %144, i32* %5, align 4
  br label %159

145:                                              ; preds = %59
  %146 = load i32, i32* @KEY_OPEN, align 4
  store i32 %146, i32* %5, align 4
  br label %159

147:                                              ; preds = %59
  %148 = load i32, i32* @KEY_CLOSE, align 4
  store i32 %148, i32* %5, align 4
  br label %159

149:                                              ; preds = %59
  %150 = load i32, i32* @KEY_SAVE, align 4
  store i32 %150, i32* %5, align 4
  br label %159

151:                                              ; preds = %59
  %152 = load i32, i32* @KEY_UNDO, align 4
  store i32 %152, i32* %5, align 4
  br label %159

153:                                              ; preds = %59
  %154 = load i32, i32* @KEY_REDO, align 4
  store i32 %154, i32* %5, align 4
  br label %159

155:                                              ; preds = %59
  %156 = load i32, i32* @KEY_SPELLCHECK, align 4
  store i32 %156, i32* %5, align 4
  br label %159

157:                                              ; preds = %59
  %158 = load i32, i32* @KEY_PRINT, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %59, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %122
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %164 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @EV_KEY, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @input_event(i32 %165, i32 %166, i32 %167, i32 1)
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %3, align 8
  %171 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  br label %176

176:                                              ; preds = %162, %159
  br label %177

177:                                              ; preds = %176, %112, %80, %79
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %56

180:                                              ; preds = %56
  ret i32 1
}

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @pcmidi_submit_output_report(%struct.pcmidi_snd*, i32) #1

declare dso_local i32 @dbg_hid(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
