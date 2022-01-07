; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_pump_status_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_pump_status_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@ISAR_RATE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: wrong pstrsp ril=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@dmril = common dso_local global i8** null, align 8
@dmrim = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: pump strsp %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_ch*)* @isar_pump_status_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isar_pump_status_rsp(%struct.isar_ch* %0) #0 {
  %2 = alloca %struct.isar_ch*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.isar_ch* %0, %struct.isar_ch** %2, align 8
  %5 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %6 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @ISAR_RATE_REQ, align 4
  %13 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %14 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = call i32 @test_and_clear_bit(i32 %12, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %74

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 14
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %25 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  store i32 15, i32* %3, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %33 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %49 [
    i32 0, label %39
    i32 32, label %40
    i32 64, label %41
    i32 65, label %42
    i32 81, label %43
    i32 97, label %44
    i32 113, label %45
    i32 130, label %46
    i32 146, label %47
    i32 162, label %48
  ]

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %50

40:                                               ; preds = %31
  store i32 2, i32* %4, align 4
  br label %50

41:                                               ; preds = %31
  store i32 3, i32* %4, align 4
  br label %50

42:                                               ; preds = %31
  store i32 4, i32* %4, align 4
  br label %50

43:                                               ; preds = %31
  store i32 5, i32* %4, align 4
  br label %50

44:                                               ; preds = %31
  store i32 6, i32* %4, align 4
  br label %50

45:                                               ; preds = %31
  store i32 7, i32* %4, align 4
  br label %50

46:                                               ; preds = %31
  store i32 8, i32* %4, align 4
  br label %50

47:                                               ; preds = %31
  store i32 9, i32* %4, align 4
  br label %50

48:                                               ; preds = %31
  store i32 10, i32* %4, align 4
  br label %50

49:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39
  %51 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %52 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8**, i8*** @dmril, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** @dmrim, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @sprintf(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %63)
  %65 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %66 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.isar_ch*, %struct.isar_ch** %2, align 8
  %71 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %50, %19
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
