; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt312.c_mt312_initfe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt312.c_mt312_initfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt312_state* }
%struct.mt312_state = type { i32, i32, i32 }

@CONFIG = common dso_local global i32 0, align 4
@__const.mt312_initfe.buf_def = private unnamed_addr constant [8 x i32] [i32 20, i32 18, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0], align 16
@VIT_SETUP = common dso_local global i32 0, align 4
@GPP_CTRL = common dso_local global i32 0, align 4
@HW_CTRL = common dso_local global i32 0, align 4
@MPEG_CTRL = common dso_local global i32 0, align 4
@SYS_CLK = common dso_local global i32 0, align 4
@SNR_THS_HIGH = common dso_local global i32 0, align 4
@OP_CTRL = common dso_local global i32 0, align 4
@TS_SW_LIM_L = common dso_local global i32 0, align 4
@CS_SW_LIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt312_initfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt312_initfe(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mt312_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [8 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.mt312_state*, %struct.mt312_state** %9, align 8
  store %struct.mt312_state* %10, %struct.mt312_state** %4, align 8
  %11 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %12 = load i32, i32* @CONFIG, align 4
  %13 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %14 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 6
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 136, i32 140
  %19 = call i32 @mt312_writereg(%struct.mt312_state* %11, i32 %12, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %152

24:                                               ; preds = %1
  %25 = call i32 @udelay(i32 150)
  %26 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %27 = call i32 @mt312_reset(%struct.mt312_state* %26, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %152

32:                                               ; preds = %24
  %33 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %33, i8* align 16 bitcast ([8 x i32]* @__const.mt312_initfe.buf_def to i8*), i64 32, i1 false)
  %34 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %35 = load i32, i32* @VIT_SETUP, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %37 = call i32 @mt312_write(%struct.mt312_state* %34, i32 %35, i32* %36, i32 32)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %152

42:                                               ; preds = %32
  %43 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %44 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %82 [
    i32 128, label %46
  ]

46:                                               ; preds = %42
  %47 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %48 = load i32, i32* @GPP_CTRL, align 4
  %49 = call i32 @mt312_writereg(%struct.mt312_state* %47, i32 %48, i32 128)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %152

54:                                               ; preds = %46
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 128, i32* %55, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 176, i32* %56, align 4
  %57 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %58 = load i32, i32* @HW_CTRL, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %60 = call i32 @mt312_write(%struct.mt312_state* %57, i32 %58, i32* %59, i32 2)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %152

65:                                               ; preds = %54
  %66 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %67 = load i32, i32* @HW_CTRL, align 4
  %68 = call i32 @mt312_writereg(%struct.mt312_state* %66, i32 %67, i32 0)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %152

73:                                               ; preds = %65
  %74 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %75 = load i32, i32* @MPEG_CTRL, align 4
  %76 = call i32 @mt312_writereg(%struct.mt312_state* %74, i32 %75, i32 0)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %152

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %42, %81
  %83 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %84 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %87 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = mul nsw i32 %89, 2
  %91 = call i32 @mt312_div(i32 %90, i32 1000000)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %91, i32* %92, align 4
  %93 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %94 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @mt312_div(i32 %95, i32 88000)
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %96, i32* %97, align 4
  %98 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %99 = load i32, i32* @SYS_CLK, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %101 = call i32 @mt312_write(%struct.mt312_state* %98, i32 %99, i32* %100, i32 8)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %82
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %152

106:                                              ; preds = %82
  %107 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %108 = load i32, i32* @SNR_THS_HIGH, align 4
  %109 = call i32 @mt312_writereg(%struct.mt312_state* %107, i32 %108, i32 50)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %152

114:                                              ; preds = %106
  %115 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %116 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %120 [
    i32 128, label %118
  ]

118:                                              ; preds = %114
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 51, i32* %119, align 4
  br label %122

120:                                              ; preds = %114
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 83, i32* %121, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %124 = load i32, i32* @OP_CTRL, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @mt312_writereg(%struct.mt312_state* %123, i32 %124, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %152

132:                                              ; preds = %122
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 140, i32* %133, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 152, i32* %134, align 4
  %135 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %136 = load i32, i32* @TS_SW_LIM_L, align 4
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %138 = call i32 @mt312_write(%struct.mt312_state* %135, i32 %136, i32* %137, i32 8)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %152

143:                                              ; preds = %132
  %144 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %145 = load i32, i32* @CS_SW_LIM, align 4
  %146 = call i32 @mt312_writereg(%struct.mt312_state* %144, i32 %145, i32 105)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %152

151:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %149, %141, %130, %112, %104, %79, %71, %63, %52, %40, %30, %22
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @mt312_writereg(%struct.mt312_state*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt312_reset(%struct.mt312_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mt312_write(%struct.mt312_state*, i32, i32*, i32) #1

declare dso_local i32 @mt312_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
