; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.mxl* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32 }
%struct.mxl = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.MXL_HYDRA_DEMOD_PARAM_T = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MXL_HYDRA_DSS = common dso_local global i32 0, align 4
@MXL_HYDRA_ROLLOFF_AUTO = common dso_local global i8* null, align 8
@MXL_HYDRA_DVBS = common dso_local global i32 0, align 4
@MXL_HYDRA_ROLLOFF_0_35 = common dso_local global i8* null, align 8
@MXL_HYDRA_MOD_QPSK = common dso_local global i32 0, align 4
@MXL_HYDRA_PILOTS_OFF = common dso_local global i32 0, align 4
@MXL_HYDRA_DVBS2 = common dso_local global i32 0, align 4
@MXL_HYDRA_MOD_AUTO = common dso_local global i32 0, align 4
@MXL_HYDRA_PILOTS_AUTO = common dso_local global i32 0, align 4
@MXL_HYDRA_SPECTRUM_AUTO = common dso_local global i32 0, align 4
@MXL_HYDRA_FEC_AUTO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MXL_HYDRA_DEMOD_SET_PARAM_CMD = common dso_local global i32 0, align 4
@MXL_CMD_WRITE = common dso_local global i32 0, align 4
@MXL_HYDRA_CMD_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mxl*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.MXL_HYDRA_DEMOD_PARAM_T, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.mxl*, %struct.mxl** %14, align 8
  store %struct.mxl* %15, %struct.mxl** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  store %struct.dtv_frontend_properties* %17, %struct.dtv_frontend_properties** %5, align 8
  store i32 56, i32* %7, align 4
  %18 = load i32, i32* @MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 10, i32* %10, align 4
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 950000
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 2150000
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %171

34:                                               ; preds = %26
  %35 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %36 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 1000000
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 45000000
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %171

47:                                               ; preds = %39
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %87 [
    i32 130, label %51
    i32 129, label %56
    i32 128, label %73
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @MXL_HYDRA_DSS, align 4
  %53 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 10
  store i32 %52, i32* %53, align 8
  %54 = load i8*, i8** @MXL_HYDRA_ROLLOFF_AUTO, align 8
  %55 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 9
  store i8* %54, i8** %55, align 8
  br label %90

56:                                               ; preds = %47
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 1000000
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 10
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 10, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32, i32* @MXL_HYDRA_DVBS, align 4
  %66 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 10
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** @MXL_HYDRA_ROLLOFF_0_35, align 8
  %68 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 9
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* @MXL_HYDRA_MOD_QPSK, align 4
  %70 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 8
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* @MXL_HYDRA_PILOTS_OFF, align 4
  %72 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 7
  store i32 %71, i32* %72, align 4
  br label %90

73:                                               ; preds = %47
  %74 = load i32, i32* @MXL_HYDRA_DVBS2, align 4
  %75 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 10
  store i32 %74, i32* %75, align 8
  %76 = load i8*, i8** @MXL_HYDRA_ROLLOFF_AUTO, align 8
  %77 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 9
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* @MXL_HYDRA_MOD_AUTO, align 4
  %79 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 8
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* @MXL_HYDRA_PILOTS_AUTO, align 4
  %81 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 7
  store i32 %80, i32* %81, align 4
  %82 = load %struct.mxl*, %struct.mxl** %4, align 8
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cfg_scrambler(%struct.mxl* %82, i32 %85)
  br label %90

87:                                               ; preds = %47
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %171

90:                                               ; preds = %73, %64, %51
  %91 = load %struct.mxl*, %struct.mxl** %4, align 8
  %92 = getelementptr inbounds %struct.mxl, %struct.mxl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 6
  store i32 %93, i32* %94, align 8
  %95 = load %struct.mxl*, %struct.mxl** %4, align 8
  %96 = getelementptr inbounds %struct.mxl, %struct.mxl* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 5
  store i32 %97, i32* %98, align 4
  %99 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %100 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 1000
  %103 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* @MXL_HYDRA_SPECTRUM_AUTO, align 4
  %111 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 4
  store i32 %110, i32* %111, align 8
  %112 = load i32, i32* @MXL_HYDRA_FEC_AUTO, align 4
  %113 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_PARAM_T, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  %114 = load %struct.mxl*, %struct.mxl** %4, align 8
  %115 = getelementptr inbounds %struct.mxl, %struct.mxl* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @mutex_lock(i32* %117)
  %119 = load i64, i64* @jiffies, align 8
  %120 = call i64 @msecs_to_jiffies(i32 200)
  %121 = add nsw i64 %119, %120
  %122 = load %struct.mxl*, %struct.mxl** %4, align 8
  %123 = getelementptr inbounds %struct.mxl, %struct.mxl* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @time_after(i64 %121, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %90
  br label %130

130:                                              ; preds = %139, %129
  %131 = load i64, i64* @jiffies, align 8
  %132 = load %struct.mxl*, %struct.mxl** %4, align 8
  %133 = getelementptr inbounds %struct.mxl, %struct.mxl* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @time_before(i64 %131, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %130

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %90
  %143 = load i64, i64* @jiffies, align 8
  %144 = call i64 @msecs_to_jiffies(i32 100)
  %145 = add nsw i64 %143, %144
  %146 = load %struct.mxl*, %struct.mxl** %4, align 8
  %147 = getelementptr inbounds %struct.mxl, %struct.mxl* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  %150 = load %struct.mxl*, %struct.mxl** %4, align 8
  %151 = getelementptr inbounds %struct.mxl, %struct.mxl* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.mxl*, %struct.mxl** %4, align 8
  %154 = getelementptr inbounds %struct.mxl, %struct.mxl* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @MXL_HYDRA_DEMOD_SET_PARAM_CMD, align 4
  %156 = load i32, i32* @MXL_CMD_WRITE, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @BUILD_HYDRA_CMD(i32 %155, i32 %156, i32 %157, %struct.MXL_HYDRA_DEMOD_PARAM_T* %6, i32* %21)
  %159 = load %struct.mxl*, %struct.mxl** %4, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @MXL_HYDRA_CMD_HEADER_SIZE, align 4
  %162 = add nsw i32 %160, %161
  %163 = getelementptr inbounds i32, i32* %21, i64 0
  %164 = call i32 @send_command(%struct.mxl* %159, i32 %162, i32* %163)
  store i32 %164, i32* %11, align 4
  %165 = load %struct.mxl*, %struct.mxl** %4, align 8
  %166 = getelementptr inbounds %struct.mxl, %struct.mxl* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %171

171:                                              ; preds = %142, %87, %44, %31
  %172 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cfg_scrambler(%struct.mxl*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @time_after(i64, i64) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i64 @time_before(i64, i64) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @BUILD_HYDRA_CMD(i32, i32, i32, %struct.MXL_HYDRA_DEMOD_PARAM_T*, i32*) #2

declare dso_local i32 @send_command(%struct.mxl*, i32, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
