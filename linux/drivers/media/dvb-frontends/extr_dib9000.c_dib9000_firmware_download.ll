; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_firmware_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"going to download %dB of microcode\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"error while downloading microcode for RISC %c\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Microcode for RISC %c loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32, i32, i32*, i8)* @dib9000_firmware_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_firmware_download(%struct.dib9000_state* %0, i32 %1, i32 %2, i32* %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8 %4, i8* %11, align 1
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 16, i32* %12, align 4
  br label %17

16:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 1024, %19
  %21 = call i32 @dib9000_write_word(%struct.dib9000_state* %18, i32 %20, i32 15)
  %22 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 1025, %23
  %25 = call i32 @dib9000_write_word(%struct.dib9000_state* %22, i32 %24, i32 0)
  %26 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 1031, %27
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dib9000_write_word(%struct.dib9000_state* %26, i32 %28, i32 %29)
  %31 = load i8, i8* %11, align 1
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %31)
  %33 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 1026, %34
  %36 = load i32*, i32** %10, align 8
  %37 = load i8, i8* %11, align 1
  %38 = sext i8 %37 to i32
  %39 = call i64 @dib9000_write16_noinc(%struct.dib9000_state* %33, i32 %35, i32* %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %17
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 65, %42
  %44 = trunc i32 %43 to i8
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8 signext %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %53

48:                                               ; preds = %17
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 65, %49
  %51 = trunc i32 %50 to i8
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8 signext %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i8 signext) #1

declare dso_local i64 @dib9000_write16_noinc(%struct.dib9000_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
