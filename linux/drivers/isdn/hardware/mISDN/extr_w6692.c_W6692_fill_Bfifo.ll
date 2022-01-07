; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_fill_Bfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_W6692_fill_Bfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_ch = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, %struct.TYPE_3__*, %struct.w6692_hw* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.w6692_hw = type { i8*, i32 }

@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@W_B_CMDR_XMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: fill Bfifo\0A\00", align 1
@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@W_B_FIFO_THRESH = common dso_local global i32 0, align 4
@FLG_HDLC = common dso_local global i32 0, align 4
@W_B_CMDR_XME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: fill Bfifo%d/%d\0A\00", align 1
@W_B_XFIFO = common dso_local global i64 0, align 8
@MISDN_BCH_FILL_SIZE = common dso_local global i32 0, align 4
@W_B_CMDR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"B%1d-send %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_ch*)* @W6692_fill_Bfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_fill_Bfifo(%struct.w6692_ch* %0) #0 {
  %2 = alloca %struct.w6692_ch*, align 8
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.w6692_ch* %0, %struct.w6692_ch** %2, align 8
  %8 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %9 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  %11 = load %struct.w6692_hw*, %struct.w6692_hw** %10, align 8
  store %struct.w6692_hw* %11, %struct.w6692_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @W_B_CMDR_RACT, align 4
  %13 = load i32, i32* @W_B_CMDR_XMS, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %16 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %20 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @FLG_TX_EMPTY, align 4
  %26 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %27 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %25, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %160

32:                                               ; preds = %24
  %33 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %34 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %6, align 8
  %37 = load i32, i32* @W_B_FIFO_THRESH, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %66

38:                                               ; preds = %1
  %39 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %40 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %46 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %44, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %160

53:                                               ; preds = %38
  %54 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %55 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %61 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %53, %32
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @W_B_FIFO_THRESH, align 4
  store i32 %71, i32* %4, align 4
  br label %84

72:                                               ; preds = %66
  %73 = load i32, i32* @FLG_HDLC, align 4
  %74 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %75 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = call i64 @test_bit(i32 %73, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @W_B_CMDR_XME, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %72
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %86 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %90 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %87, i32 %88, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %96 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %94
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %106, %102
  %104 = load i32, i32* %4, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %108 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @W_B_XFIFO, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* @MISDN_BCH_FILL_SIZE, align 4
  %114 = call i32 @outsb(i64 %111, i32* %112, i32 %113)
  %115 = load i32, i32* @MISDN_BCH_FILL_SIZE, align 4
  %116 = load i32, i32* %4, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %4, align 4
  br label %103

118:                                              ; preds = %103
  br label %128

119:                                              ; preds = %84
  %120 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %121 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @W_B_XFIFO, align 8
  %124 = add nsw i64 %122, %123
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @outsb(i64 %124, i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %118
  %129 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %130 = load i32, i32* @W_B_CMDR, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @WriteW6692B(%struct.w6692_ch* %129, i32 %130, i32 %131)
  %133 = load i32, i32* @debug, align 4
  %134 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %128
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %137
  %141 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %142 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.w6692_ch*, %struct.w6692_ch** %2, align 8
  %145 = getelementptr inbounds %struct.w6692_ch, %struct.w6692_ch* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %149 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @snprintf(i32 %143, i32 63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %147, i8* %150, i32 %151)
  %153 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %154 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @print_hex_dump_bytes(i32 %155, i32 %156, i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %31, %52, %140, %137, %128
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @outsb(i64, i32*, i32) #1

declare dso_local i32 @WriteW6692B(%struct.w6692_ch*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
