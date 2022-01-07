; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lg2160.c_lg216x_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lg216x_state* }
%struct.lg216x_state = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VSB_8 = common dso_local global i32 0, align 4
@SYS_ATSCMH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @lg216x_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg216x_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.lg216x_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.lg216x_state*, %struct.lg216x_state** %8, align 8
  store %struct.lg216x_state* %9, %struct.lg216x_state** %5, align 8
  %10 = call i32 @lg_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @VSB_8, align 4
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 20
  store i32 %11, i32* %13, align 4
  %14 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %15 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 19
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @SYS_ATSCMH, align 4
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 18
  store i32 %19, i32* %21, align 4
  %22 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 17
  %25 = call i32 @lg216x_get_fic_version(%struct.lg216x_state* %22, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @lg_fail(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %134

30:                                               ; preds = %2
  %31 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %32 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 17
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %133

38:                                               ; preds = %30
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %43 = getelementptr inbounds %struct.lg216x_state, %struct.lg216x_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 15
  %47 = call i32 @lg216x_get_nog(%struct.lg216x_state* %44, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @lg_fail(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %134

52:                                               ; preds = %38
  %53 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 14
  %56 = call i32 @lg216x_get_tnog(%struct.lg216x_state* %53, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @lg_fail(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %134

61:                                               ; preds = %52
  %62 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 13
  %65 = call i32 @lg216x_get_sgn(%struct.lg216x_state* %62, i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @lg_fail(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %134

70:                                               ; preds = %61
  %71 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 12
  %74 = call i32 @lg216x_get_prc(%struct.lg216x_state* %71, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @lg_fail(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %134

79:                                               ; preds = %70
  %80 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 11
  %83 = call i32 @lg216x_get_rs_frame_mode(%struct.lg216x_state* %80, i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @lg_fail(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %134

88:                                               ; preds = %79
  %89 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %90 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %91 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %90, i32 0, i32 10
  %92 = call i32 @lg216x_get_rs_frame_ensemble(%struct.lg216x_state* %89, i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @lg_fail(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %134

97:                                               ; preds = %88
  %98 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %99 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %100 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %99, i32 0, i32 9
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 8
  %103 = call i32 @lg216x_get_rs_code_mode(%struct.lg216x_state* %98, i32* %100, i32* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @lg_fail(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %134

108:                                              ; preds = %97
  %109 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 7
  %112 = call i32 @lg216x_get_sccc_block_mode(%struct.lg216x_state* %109, i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @lg_fail(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %134

117:                                              ; preds = %108
  %118 = load %struct.lg216x_state*, %struct.lg216x_state** %5, align 8
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 6
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 5
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 4
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 3
  %127 = call i32 @lg216x_get_sccc_code_mode(%struct.lg216x_state* %118, i32* %120, i32* %122, i32* %124, i32* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i64 @lg_fail(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %117
  br label %134

132:                                              ; preds = %117
  br label %133

133:                                              ; preds = %132, %30
  br label %134

134:                                              ; preds = %133, %131, %116, %107, %96, %87, %78, %69, %60, %51, %29
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @lg_dbg(i8*) #1

declare dso_local i32 @lg216x_get_fic_version(%struct.lg216x_state*, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lg216x_get_nog(%struct.lg216x_state*, i32*) #1

declare dso_local i32 @lg216x_get_tnog(%struct.lg216x_state*, i32*) #1

declare dso_local i32 @lg216x_get_sgn(%struct.lg216x_state*, i32*) #1

declare dso_local i32 @lg216x_get_prc(%struct.lg216x_state*, i32*) #1

declare dso_local i32 @lg216x_get_rs_frame_mode(%struct.lg216x_state*, i32*) #1

declare dso_local i32 @lg216x_get_rs_frame_ensemble(%struct.lg216x_state*, i32*) #1

declare dso_local i32 @lg216x_get_rs_code_mode(%struct.lg216x_state*, i32*, i32*) #1

declare dso_local i32 @lg216x_get_sccc_block_mode(%struct.lg216x_state*, i32*) #1

declare dso_local i32 @lg216x_get_sccc_code_mode(%struct.lg216x_state*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
