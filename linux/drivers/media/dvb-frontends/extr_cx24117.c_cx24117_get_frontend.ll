; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24117.c_cx24117_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24117.c_cx24117_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dvb_frontend = type { %struct.cx24117_state* }
%struct.cx24117_state = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dtv_frontend_properties = type { i64, i32, i64, i32, i32, i32 }
%struct.cx24117_cmd = type { i32*, i32 }

@CMD_GETCTLACC = common dso_local global i32 0, align 4
@CX24117_REG_FREQ3_0 = common dso_local global i32 0, align 4
@CX24117_REG_FREQ3_1 = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@SYS_DVBS2 = common dso_local global i64 0, align 8
@cx24117_modfec_modes = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cx24117_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24117_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.cx24117_state*, align 8
  %7 = alloca %struct.cx24117_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca [27 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = load %struct.cx24117_state*, %struct.cx24117_state** %18, align 8
  store %struct.cx24117_state* %19, %struct.cx24117_state** %6, align 8
  %20 = load i32, i32* @CMD_GETCTLACC, align 4
  %21 = getelementptr inbounds %struct.cx24117_cmd, %struct.cx24117_cmd* %7, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %25 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.cx24117_cmd, %struct.cx24117_cmd* %7, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.cx24117_cmd, %struct.cx24117_cmd* %7, i32 0, i32 1
  store i32 2, i32* %31, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = call i32 @cx24117_cmd_execute(%struct.dvb_frontend* %32, %struct.cx24117_cmd* %7)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %159

38:                                               ; preds = %2
  %39 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %40 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @CX24117_REG_FREQ3_0, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @CX24117_REG_FREQ3_1, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %8, align 4
  %49 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 0
  %52 = call i32 @cx24117_readregN(%struct.cx24117_state* %49, i32 %50, i32* %51, i32 27)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %159

57:                                               ; preds = %47
  %58 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 5
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %61 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = xor i32 %65, -1
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  %71 = ashr i32 %70, 6
  %72 = and i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @INVERSION_OFF, align 4
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  br label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @INVERSION_ON, align 4
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 63
  store i32 %85, i32* %12, align 4
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SYS_DVBS2, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  %93 = icmp sgt i32 %92, 11
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 9
  store i32 %96, i32* %12, align 4
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 7
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %83
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx24117_modfec_modes, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx24117_modfec_modes, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = shl i32 %119, 16
  %121 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %120, %123
  %125 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %124, %126
  store i32 %127, i32* %13, align 4
  %128 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 8
  %129 = load i32, i32* %128, align 16
  %130 = shl i32 %129, 8
  %131 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 9
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %130, %132
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %15, align 2
  %135 = load i32, i32* %13, align 4
  %136 = load i16, i16* %15, align 2
  %137 = sext i16 %136 to i32
  %138 = add i32 %135, %137
  %139 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 10
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 %142, 8
  %144 = getelementptr inbounds [27 x i32], [27 x i32]* %16, i64 0, i64 11
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %143, %145
  %147 = trunc i32 %146 to i16
  store i16 %147, i16* %14, align 2
  %148 = load i16, i16* %14, align 2
  %149 = sext i16 %148 to i32
  %150 = mul nsw i32 -1000, %149
  %151 = sext i32 %150 to i64
  %152 = load %struct.cx24117_state*, %struct.cx24117_state** %6, align 8
  %153 = getelementptr inbounds %struct.cx24117_state, %struct.cx24117_state* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %151, %155
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %101, %55, %36
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @cx24117_cmd_execute(%struct.dvb_frontend*, %struct.cx24117_cmd*) #1

declare dso_local i32 @cx24117_readregN(%struct.cx24117_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
