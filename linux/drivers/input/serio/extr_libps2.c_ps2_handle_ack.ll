; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_handle_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_handle_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PS2_FLAG_NAK = common dso_local global i32 0, align 4
@PS2_FLAG_WAITID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unexpected %#02x\0A\00", align 1
@PS2_FLAG_ACK_CMD = common dso_local global i32 0, align 4
@PS2_FLAG_CMD = common dso_local global i32 0, align 4
@PS2_FLAG_CMD1 = common dso_local global i32 0, align 4
@PS2_FLAG_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_handle_ack(%struct.ps2dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ps2dev* %0, %struct.ps2dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %46 [
    i32 130, label %7
    i32 128, label %10
    i32 129, label %18
    i32 0, label %35
    i32 3, label %35
    i32 4, label %35
  ]

7:                                                ; preds = %2
  %8 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %9 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  br label %64

10:                                               ; preds = %2
  %11 = load i32, i32* @PS2_FLAG_NAK, align 4
  %12 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %13 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %17 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %16, i32 0, i32 0
  store i32 128, i32* %17, align 8
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %20 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PS2_FLAG_NAK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @PS2_FLAG_NAK, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %29 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %33 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %32, i32 0, i32 0
  store i32 129, i32* %33, align 8
  br label %64

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %2, %2, %2, %34
  %36 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %37 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PS2_FLAG_WAITID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %44 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %64

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %2, %45
  %47 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %48 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @PS2_FLAG_WAITID, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %56 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %60 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PS2_FLAG_ACK_CMD, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %106

64:                                               ; preds = %42, %25, %10, %7
  %65 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %66 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @PS2_FLAG_NAK, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %73 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %77 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %69
  %81 = load i32, i32* @PS2_FLAG_CMD, align 4
  %82 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %85 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %69
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* @PS2_FLAG_ACK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %93 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %97 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %96, i32 0, i32 2
  %98 = call i32 @wake_up(i32* %97)
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 130
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ps2_handle_response(%struct.ps2dev* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %89
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %46
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ps2_handle_response(%struct.ps2dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
