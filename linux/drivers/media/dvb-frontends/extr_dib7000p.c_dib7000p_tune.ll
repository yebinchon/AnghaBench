; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state*, %struct.dtv_frontend_properties }
%struct.dib7000p_state = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.dtv_frontend_properties = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SFN workaround is active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_tune(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib7000p_state*, %struct.dib7000p_state** %10, align 8
  store %struct.dib7000p_state* %11, %struct.dib7000p_state** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %13 = icmp ne %struct.dtv_frontend_properties* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %17 = call i32 @dib7000p_set_channel(%struct.dib7000p_state* %15, %struct.dtv_frontend_properties* %16, i32 0)
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %167

21:                                               ; preds = %14
  %22 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %23 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %22, i32 770, i32 16384)
  %24 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %25 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %24, i32 770, i32 0)
  %26 = call i32 @msleep(i32 45)
  store i32 4211, i32* %6, align 4
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 512
  store i32 %34, i32* %6, align 4
  %35 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %36 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %35, i32 166, i32 16384)
  br label %40

37:                                               ; preds = %21
  %38 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %39 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %38, i32 166, i32 0)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %41, i32 29, i32 %42)
  %44 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %45 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @msleep(i32 200)
  br label %50

50:                                               ; preds = %48, %40
  store i32 1664, i32* %6, align 4
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %60 [
    i32 130, label %54
    i32 129, label %57
    i32 128, label %61
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 8192
  store i32 %56, i32* %6, align 4
  br label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, 12288
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %50, %60
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, 16384
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %57, %54
  %65 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %65, i32 26, i32 %66)
  store i32 0, i32* %6, align 4
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %77 [
    i32 130, label %71
    i32 129, label %74
    i32 128, label %78
  ]

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, 6
  store i32 %73, i32* %6, align 4
  br label %81

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, 7
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %64, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, 8
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %74, %71
  %82 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %82, i32 32, i32 %83)
  store i32 0, i32* %6, align 4
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %94 [
    i32 130, label %88
    i32 129, label %91
    i32 128, label %95
  ]

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, 6
  store i32 %90, i32* %6, align 4
  br label %98

91:                                               ; preds = %81
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, 7
  store i32 %93, i32* %6, align 4
  br label %98

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %81, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 8
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %91, %88
  %99 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %99, i32 33, i32 %100)
  %102 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %103 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %102, i32 509)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = ashr i32 %104, 6
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %98
  %109 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %110 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %109, i32 771)
  store i32 %110, i32* %6, align 4
  %111 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, 2
  %114 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %111, i32 771, i32 %113)
  %115 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %115, i32 771, i32 %116)
  %118 = call i32 @msleep(i32 40)
  %119 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %120 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %119, i32 509)
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %108, %98
  %122 = load i32, i32* %6, align 4
  %123 = ashr i32 %122, 6
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %128 = call i32 @dib7000p_update_timf(%struct.dib7000p_state* %127)
  %129 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %130 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %129, i32 26)
  store i32 %130, i32* %6, align 4
  %131 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, -61441
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 12
  %136 = and i32 %135, 15
  %137 = add nsw i32 %136, 5
  %138 = shl i32 %137, 12
  %139 = or i32 %133, %138
  %140 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %131, i32 26, i32 %139)
  br label %141

141:                                              ; preds = %126, %121
  %142 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %143 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %151, 1000
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @BANDWIDTH_TO_KHZ(i32 %155)
  %157 = call i32 @dib7000p_spur_protect(%struct.dib7000p_state* %148, i32 %152, i32 %156)
  br label %158

158:                                              ; preds = %147, %141
  %159 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %160 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %161 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @BANDWIDTH_TO_KHZ(i32 %162)
  %164 = call i32 @dib7000p_set_bandwidth(%struct.dib7000p_state* %159, i32 %163)
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %166 = call i32 @dib7000p_reset_stats(%struct.dvb_frontend* %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %158, %18
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @dib7000p_set_channel(%struct.dib7000p_state*, %struct.dtv_frontend_properties*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_update_timf(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_spur_protect(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000p_set_bandwidth(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_reset_stats(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
