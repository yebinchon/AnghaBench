; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_p_sys-t.c_sys_t_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_p_sys-t.c_sys_t_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_data = type { i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)* }
%struct.stm_output = type { i32, i32, %struct.sys_t_output* }
%struct.sys_t_output = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@DATA_HEADER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@MIPI_SYST_OPT_LEN = common dso_local global i32 0, align 4
@MIPI_SYST_OPT_TS = common dso_local global i32 0, align 4
@STP_PACKET_DATA = common dso_local global i32 0, align 4
@STP_PACKET_TIMESTAMPED = common dso_local global i32 0, align 4
@UUID_SIZE = common dso_local global i64 0, align 8
@STP_PACKET_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stm_data*, %struct.stm_output*, i32, i8*, i64)* @sys_t_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sys_t_write(%struct.stm_data* %0, %struct.stm_output* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.stm_data*, align 8
  %8 = alloca %struct.stm_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sys_t_output*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  store %struct.stm_data* %0, %struct.stm_data** %7, align 8
  store %struct.stm_output* %1, %struct.stm_output** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.stm_output*, %struct.stm_output** %8, align 8
  %21 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %20, i32 0, i32 2
  %22 = load %struct.sys_t_output*, %struct.sys_t_output** %21, align 8
  store %struct.sys_t_output* %22, %struct.sys_t_output** %12, align 8
  %23 = load %struct.stm_output*, %struct.stm_output** %8, align 8
  %24 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.stm_output*, %struct.stm_output** %8, align 8
  %29 = getelementptr inbounds %struct.stm_output, %struct.stm_output* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  store i8 0, i8* %15, align 1
  %31 = load i32, i32* @DATA_HEADER, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.sys_t_output*, %struct.sys_t_output** %12, align 8
  %33 = icmp ne %struct.sys_t_output* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %6, align 8
  br label %157

37:                                               ; preds = %5
  %38 = load %struct.sys_t_output*, %struct.sys_t_output** %12, align 8
  %39 = call i64 @sys_t_need_clock_sync(%struct.sys_t_output* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @sys_t_clock_sync(%struct.stm_data* %42, i32 %43, i32 %44)
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %17, align 8
  store i64 %49, i64* %6, align 8
  br label %157

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.sys_t_output*, %struct.sys_t_output** %12, align 8
  %53 = getelementptr inbounds %struct.sys_t_output, %struct.sys_t_output* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @MIPI_SYST_OPT_LEN, align 4
  %59 = load i32, i32* %16, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.sys_t_output*, %struct.sys_t_output** %12, align 8
  %63 = call i64 @sys_t_need_ts(%struct.sys_t_output* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @MIPI_SYST_OPT_TS, align 4
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %16, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %71 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %70, i32 0, i32 0
  %72 = load i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)*, i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)** %71, align 8
  %73 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @STP_PACKET_DATA, align 4
  %77 = load i32, i32* @STP_PACKET_TIMESTAMPED, align 4
  %78 = bitcast i32* %16 to i8*
  %79 = call i64 %72(%struct.stm_data* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 4, i8* %78)
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i64, i64* %17, align 8
  store i64 %83, i64* %6, align 8
  br label %157

84:                                               ; preds = %69
  %85 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.sys_t_output*, %struct.sys_t_output** %12, align 8
  %89 = getelementptr inbounds %struct.sys_t_output, %struct.sys_t_output* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* @UUID_SIZE, align 8
  %94 = call i64 @stm_data_write(%struct.stm_data* %85, i32 %86, i32 %87, i32 0, i8* %92, i64 %93)
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %17, align 8
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i64, i64* %17, align 8
  store i64 %98, i64* %6, align 8
  br label %157

99:                                               ; preds = %84
  %100 = load %struct.sys_t_output*, %struct.sys_t_output** %12, align 8
  %101 = getelementptr inbounds %struct.sys_t_output, %struct.sys_t_output* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %99
  %106 = load i64, i64* %11, align 8
  store i64 %106, i64* %18, align 8
  %107 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %108 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %107, i32 0, i32 0
  %109 = load i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)*, i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)** %108, align 8
  %110 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @STP_PACKET_DATA, align 4
  %114 = bitcast i64* %18 to i8*
  %115 = call i64 %109(%struct.stm_data* %110, i32 %111, i32 %112, i32 %113, i32 0, i32 2, i8* %114)
  store i64 %115, i64* %17, align 8
  %116 = load i64, i64* %17, align 8
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i64, i64* %17, align 8
  store i64 %119, i64* %6, align 8
  br label %157

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %99
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @MIPI_SYST_OPT_TS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = call signext i8 (...) @ktime_get_real_ns()
  store i8 %127, i8* %19, align 1
  %128 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i64 @stm_data_write(%struct.stm_data* %128, i32 %129, i32 %130, i32 0, i8* %19, i64 1)
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %17, align 8
  %133 = icmp sle i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i64, i64* %17, align 8
  store i64 %135, i64* %6, align 8
  br label %157

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i8*, i8** %10, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i64 @stm_data_write(%struct.stm_data* %138, i32 %139, i32 %140, i32 0, i8* %141, i64 %142)
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %137
  %147 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %148 = getelementptr inbounds %struct.stm_data, %struct.stm_data* %147, i32 0, i32 0
  %149 = load i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)*, i64 (%struct.stm_data*, i32, i32, i32, i32, i32, i8*)** %148, align 8
  %150 = load %struct.stm_data*, %struct.stm_data** %7, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @STP_PACKET_FLAG, align 4
  %154 = call i64 %149(%struct.stm_data* %150, i32 %151, i32 %152, i32 %153, i32 0, i32 0, i8* %15)
  br label %155

155:                                              ; preds = %146, %137
  %156 = load i64, i64* %17, align 8
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %155, %134, %118, %97, %82, %48, %34
  %158 = load i64, i64* %6, align 8
  ret i64 %158
}

declare dso_local i64 @sys_t_need_clock_sync(%struct.sys_t_output*) #1

declare dso_local i64 @sys_t_clock_sync(%struct.stm_data*, i32, i32) #1

declare dso_local i64 @sys_t_need_ts(%struct.sys_t_output*) #1

declare dso_local i64 @stm_data_write(%struct.stm_data*, i32, i32, i32, i8*, i64) #1

declare dso_local signext i8 @ktime_get_real_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
