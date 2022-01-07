; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000m.c_dib7000m_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong Vendor ID (0x%x)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"wrong Device ID (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"this driver does not work with DiB7000PC\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"found DiB7000MA/PA/MB/PB\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"found DiB7000HC\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"found DiB7000MC\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"found DiB9000\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*)* @dib7000m_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_identify(%struct.dib7000m_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32, align 4
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  %5 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %6 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %5, i32 896)
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 435
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @EREMOTEIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %15 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %14, i32 897)
  %16 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %17 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %19 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 16384
  br i1 %21, label %22, label %42

22:                                               ; preds = %13
  %23 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %24 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 16385
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %29 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 16386
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %34 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 16387
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EREMOTEIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %74

42:                                               ; preds = %32, %27, %22, %13
  %43 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %44 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 16384
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %49 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %48, i32 769)
  %50 = icmp eq i32 %49, 16384
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EREMOTEIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %74

55:                                               ; preds = %47, %42
  %56 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %57 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %73 [
    i32 16384, label %59
    i32 16385, label %61
    i32 16386, label %65
    i32 16387, label %69
  ]

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %73

61:                                               ; preds = %55
  %62 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %63 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %73

65:                                               ; preds = %55
  %66 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %67 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %73

69:                                               ; preds = %55
  %70 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %71 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %55, %69, %65, %61, %59
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %51, %37, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
