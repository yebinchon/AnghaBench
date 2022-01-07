; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2880_priv* }
%struct.dtv_frontend_properties = type { i64 }
%struct.cxd2880_priv = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@SYS_DVBT = common dso_local global i64 0, align 8
@SYS_DVBT2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid system\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"failed. sys = %d\0A\00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"status %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"invalid system\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cxd2880_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxd2880_priv*, align 8
  %11 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.cxd2880_priv* null, %struct.cxd2880_priv** %10, align 8
  store %struct.dtv_frontend_properties* null, %struct.dtv_frontend_properties** %11, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = icmp ne %struct.dvb_frontend* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %2
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %177

21:                                               ; preds = %14
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  %24 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %23, align 8
  store %struct.cxd2880_priv* %24, %struct.cxd2880_priv** %10, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 0
  store %struct.dtv_frontend_properties* %26, %struct.dtv_frontend_properties** %11, align 8
  %27 = load i32*, i32** %5, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %29 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %102

34:                                               ; preds = %21
  %35 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %36 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mutex_lock(i32 %37)
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %11, align 8
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SYS_DVBT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %46 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %45, i32 0, i32 2
  %47 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(%struct.TYPE_3__* %46, i32* %7, i32* %8, i32* %9)
  store i32 %47, i32* %6, align 4
  br label %67

48:                                               ; preds = %34
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %11, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SYS_DVBT2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %56 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %55, i32 0, i32 2
  %57 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.TYPE_3__* %56, i32* %7, i32* %8, i32* %9)
  store i32 %57, i32* %6, align 4
  br label %66

58:                                               ; preds = %48
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %61 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mutex_unlock(i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %177

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %69 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mutex_unlock(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %76 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %177

81:                                               ; preds = %67
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %86 = load i32, i32* @FE_HAS_CARRIER, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* @FE_HAS_VITERBI, align 4
  %94 = load i32, i32* @FE_HAS_SYNC, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @FE_HAS_LOCK, align 4
  %97 = or i32 %95, %96
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %92, %89
  br label %102

102:                                              ; preds = %101, %21
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %107 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %172

110:                                              ; preds = %102
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FE_HAS_LOCK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %172

116:                                              ; preds = %110
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @FE_HAS_CARRIER, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %172

122:                                              ; preds = %116
  %123 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %124 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mutex_lock(i32 %125)
  %127 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %11, align 8
  %128 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SYS_DVBT, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %134 = call i32 @cxd2880_set_ber_per_period_t(%struct.dvb_frontend* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %138 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %167

139:                                              ; preds = %122
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %11, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SYS_DVBT2, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %147 = call i32 @cxd2880_check_l1post_plp(%struct.dvb_frontend* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  %151 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %152 = call i32 @cxd2880_set_ber_per_period_t2(%struct.dvb_frontend* %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %156 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %150, %145
  br label %166

158:                                              ; preds = %139
  %159 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %161 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @mutex_unlock(i32 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %177

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %132
  %168 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %10, align 8
  %169 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @mutex_unlock(i32 %170)
  br label %172

172:                                              ; preds = %167, %116, %110, %102
  %173 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @cxd2880_get_stats(%struct.dvb_frontend* %173, i32 %175)
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %172, %158, %74, %58, %17
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(%struct.TYPE_3__*, i32*, i32*, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.TYPE_3__*, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @cxd2880_set_ber_per_period_t(%struct.dvb_frontend*) #1

declare dso_local i32 @cxd2880_check_l1post_plp(%struct.dvb_frontend*) #1

declare dso_local i32 @cxd2880_set_ber_per_period_t2(%struct.dvb_frontend*) #1

declare dso_local i32 @cxd2880_get_stats(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
