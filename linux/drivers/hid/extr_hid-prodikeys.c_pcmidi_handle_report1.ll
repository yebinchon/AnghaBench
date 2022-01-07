; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-prodikeys.c_pcmidi_handle_report1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmidi_snd = type { i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"pcmidi mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"pcmidi mode: %d octave: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmidi_snd*, i32*)* @pcmidi_handle_report1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmidi_handle_report1(%struct.pcmidi_snd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmidi_snd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmidi_snd* %0, %struct.pcmidi_snd** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %23 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, i64, ...) @dbg_hid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %27 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 16384
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %35 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %39 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, -2
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %44 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %43, i32 0, i32 0
  store i32 -2, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %47 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %50 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i64, ...) @dbg_hid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %48, i32 %51)
  store i32 1, i32* %3, align 4
  br label %68

53:                                               ; preds = %30, %2
  %54 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %55 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.pcmidi_snd*, %struct.pcmidi_snd** %4, align 8
  %63 = getelementptr inbounds %struct.pcmidi_snd, %struct.pcmidi_snd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, 1
  store i32 %65, i32* %63, align 4
  store i32 1, i32* %3, align 4
  br label %68

66:                                               ; preds = %58, %53
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %61, %45
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dbg_hid(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
