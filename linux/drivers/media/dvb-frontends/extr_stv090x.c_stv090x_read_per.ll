; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_per.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_per.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }

@FE_HAS_LOCK = common dso_local global i32 0, align 4
@ERRCNT22 = common dso_local global i32 0, align 4
@ERR_CNT2_FIELD = common dso_local global i32 0, align 4
@ERRCNT21 = common dso_local global i32 0, align 4
@ERR_CNT21_FIELD = common dso_local global i32 0, align 4
@ERRCNT20 = common dso_local global i32 0, align 4
@ERR_CNT20_FIELD = common dso_local global i32 0, align 4
@FBERCPT4 = common dso_local global i32 0, align 4
@FBERCPT3 = common dso_local global i32 0, align 4
@FBERCPT2 = common dso_local global i32 0, align 4
@FBERCPT1 = common dso_local global i32 0, align 4
@FBERCPT0 = common dso_local global i32 0, align 4
@ERRCTRL2 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv090x_read_per to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_read_per(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stv090x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %19, align 8
  store %struct.stv090x_state* %20, %struct.stv090x_state** %6, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %22 = call i32 @stv090x_read_status(%struct.dvb_frontend* %21, i32* %17)
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @FE_HAS_LOCK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  store i32 8388608, i32* %28, align 4
  br label %96

29:                                               ; preds = %2
  %30 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %31 = load i32, i32* @ERRCNT22, align 4
  %32 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @ERR_CNT2_FIELD, align 4
  %35 = call i32 @STV090x_GETFIELD_Px(i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %37 = load i32, i32* @ERRCNT21, align 4
  %38 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @ERR_CNT21_FIELD, align 4
  %41 = call i32 @STV090x_GETFIELD_Px(i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %43 = load i32, i32* @ERRCNT20, align 4
  %44 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @ERR_CNT20_FIELD, align 4
  %47 = call i32 @STV090x_GETFIELD_Px(i32 %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %15, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* %16, align 4
  %54 = or i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %57 = load i32, i32* @FBERCPT4, align 4
  %58 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %60 = load i32, i32* @FBERCPT3, align 4
  %61 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %63 = load i32, i32* @FBERCPT2, align 4
  %64 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %66 = load i32, i32* @FBERCPT1, align 4
  %67 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %69 = load i32, i32* @FBERCPT0, align 4
  %70 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %29
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 255
  %79 = shl i32 %78, 16
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 255
  %82 = shl i32 %81, 8
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 255
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %90

89:                                               ; preds = %73, %29
  store i32 16777216, i32* %12, align 4
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32*, i32** %5, align 8
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %27
  %97 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %98 = load i32, i32* @FBERCPT4, align 4
  %99 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %97, i32 %98, i32 0)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %109

102:                                              ; preds = %96
  %103 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %104 = load i32, i32* @ERRCTRL2, align 4
  %105 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %103, i32 %104, i32 193)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %112

109:                                              ; preds = %107, %101
  %110 = load i32, i32* @FE_ERROR, align 4
  %111 = call i32 @dprintk(i32 %110, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %108
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @stv090x_read_status(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
