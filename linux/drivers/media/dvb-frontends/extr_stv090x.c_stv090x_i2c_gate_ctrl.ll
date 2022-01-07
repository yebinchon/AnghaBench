; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*, i32)* }

@I2CRPT = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Enable Gate\00", align 1
@I2CT_ON_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Disable Gate\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %11 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i32*, i32)*, i32 (i32*, i32)** %13, align 8
  %15 = icmp ne i32 (i32*, i32)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32)*, i32 (i32*, i32)** %20, align 8
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %23 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %22, i32 0, i32 1
  %24 = call i32 %21(i32* %23, i32 1)
  br label %31

25:                                               ; preds = %9
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %27 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  br label %31

31:                                               ; preds = %25, %16
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %34 = load i32, i32* @I2CRPT, align 4
  %35 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* @FE_DEBUG, align 4
  %40 = call i32 @dprintk(i32 %39, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @I2CT_ON_FIELD, align 4
  %43 = call i32 @STV090x_SETFIELD_Px(i32 %41, i32 %42, i32 1)
  %44 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %45 = load i32, i32* @I2CRPT, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %44, i32 %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %91

50:                                               ; preds = %38
  br label %64

51:                                               ; preds = %32
  %52 = load i32, i32* @FE_DEBUG, align 4
  %53 = call i32 @dprintk(i32 %52, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @I2CT_ON_FIELD, align 4
  %56 = call i32 @STV090x_SETFIELD_Px(i32 %54, i32 %55, i32 0)
  %57 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %58 = load i32, i32* @I2CRPT, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %57, i32 %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %91

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %64
  %68 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %69 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (i32*, i32)*, i32 (i32*, i32)** %71, align 8
  %73 = icmp ne i32 (i32*, i32)* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %76 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (i32*, i32)*, i32 (i32*, i32)** %78, align 8
  %80 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %81 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %80, i32 0, i32 1
  %82 = call i32 %79(i32* %81, i32 0)
  br label %89

83:                                               ; preds = %67
  %84 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %85 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %83, %74
  br label %90

90:                                               ; preds = %89, %64
  store i32 0, i32* %3, align 4
  br label %116

91:                                               ; preds = %62, %49
  %92 = load i32, i32* @FE_ERROR, align 4
  %93 = call i32 @dprintk(i32 %92, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %95 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32 (i32*, i32)*, i32 (i32*, i32)** %97, align 8
  %99 = icmp ne i32 (i32*, i32)* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %102 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32 (i32*, i32)*, i32 (i32*, i32)** %104, align 8
  %106 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %107 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %106, i32 0, i32 1
  %108 = call i32 %105(i32* %107, i32 0)
  br label %115

109:                                              ; preds = %91
  %110 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %111 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  br label %115

115:                                              ; preds = %109, %100
  store i32 -1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
