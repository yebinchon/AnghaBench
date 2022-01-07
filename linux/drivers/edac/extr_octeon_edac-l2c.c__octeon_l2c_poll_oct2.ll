; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-l2c.c__octeon_l2c_poll_oct2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-l2c.c__octeon_l2c_poll_oct2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32 }
%union.cvmx_l2c_err_tdtx = type { i8*, [24 x i8] }
%union.cvmx_l2c_err_ttgx = type { i8*, [16 x i8] }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"type:%d, syn:0x%x, way:%d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"L2D Double bit error (detected):%s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"L2D Single bit error (corrected):%s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"VBF Double bit error (detected):%s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"VBF Single bit error (corrected):%s\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Tag Double bit error (detected):%s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Tag Single bit error (corrected):%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, i32)* @_octeon_l2c_poll_oct2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_octeon_l2c_poll_oct2(%struct.edac_device_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_l2c_err_tdtx, align 8
  %6 = alloca %union.cvmx_l2c_err_tdtx, align 8
  %7 = alloca %union.cvmx_l2c_err_ttgx, align 8
  %8 = alloca %union.cvmx_l2c_err_ttgx, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca [80 x i8], align 16
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = bitcast %union.cvmx_l2c_err_tdtx* %6 to i8**
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @CVMX_L2C_ERR_TDTX(i32 %12)
  %14 = call i8* @cvmx_read_csr(i32 %13)
  %15 = bitcast %union.cvmx_l2c_err_tdtx* %5 to i8**
  store i8* %14, i8** %15, align 8
  %16 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %2
  %21 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30, %25, %20, %2
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %37 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %36, i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %35, %30
  %48 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %55 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %53, i32 80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = bitcast %union.cvmx_l2c_err_tdtx* %6 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %61 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %58, i32 %59, i32 1, i8* %60)
  br label %62

62:                                               ; preds = %52, %47
  %63 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %70 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = bitcast %union.cvmx_l2c_err_tdtx* %6 to %struct.TYPE_3__*
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %76 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %73, i32 %74, i32 1, i8* %75)
  br label %77

77:                                               ; preds = %67, %62
  %78 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %85 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = bitcast %union.cvmx_l2c_err_tdtx* %6 to %struct.TYPE_3__*
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  %88 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %91 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %88, i32 %89, i32 1, i8* %90)
  br label %92

92:                                               ; preds = %82, %77
  %93 = bitcast %union.cvmx_l2c_err_tdtx* %5 to %struct.TYPE_3__*
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  %101 = bitcast %union.cvmx_l2c_err_tdtx* %6 to %struct.TYPE_3__*
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %106 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %103, i32 %104, i32 1, i8* %105)
  br label %107

107:                                              ; preds = %97, %92
  %108 = bitcast %union.cvmx_l2c_err_tdtx* %6 to i8**
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @CVMX_L2C_ERR_TDTX(i32 %112)
  %114 = bitcast %union.cvmx_l2c_err_tdtx* %6 to i8**
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @cvmx_write_csr(i32 %113, i8* %115)
  br label %117

117:                                              ; preds = %111, %107
  %118 = bitcast %union.cvmx_l2c_err_ttgx* %8 to i8**
  store i8* null, i8** %118, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @CVMX_L2C_ERR_TTGX(i32 %119)
  %121 = call i8* @cvmx_read_csr(i32 %120)
  %122 = bitcast %union.cvmx_l2c_err_ttgx* %7 to i8**
  store i8* %121, i8** %122, align 8
  %123 = bitcast %union.cvmx_l2c_err_ttgx* %7 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %117
  %128 = bitcast %union.cvmx_l2c_err_ttgx* %7 to %struct.TYPE_4__*
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127, %117
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %134 = bitcast %union.cvmx_l2c_err_ttgx* %7 to %struct.TYPE_4__*
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = bitcast %union.cvmx_l2c_err_ttgx* %7 to %struct.TYPE_4__*
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = bitcast %union.cvmx_l2c_err_ttgx* %7 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %133, i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %132, %127
  %145 = bitcast %union.cvmx_l2c_err_ttgx* %7 to %struct.TYPE_4__*
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %152 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %150, i32 80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  %153 = bitcast %union.cvmx_l2c_err_ttgx* %8 to %struct.TYPE_4__*
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %158 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %155, i32 %156, i32 0, i8* %157)
  br label %159

159:                                              ; preds = %149, %144
  %160 = bitcast %union.cvmx_l2c_err_ttgx* %7 to %struct.TYPE_4__*
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %167 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %165, i32 80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %166)
  %168 = bitcast %union.cvmx_l2c_err_ttgx* %8 to %struct.TYPE_4__*
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 1, i32* %169, align 4
  %170 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %171 = load i32, i32* %4, align 4
  %172 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %173 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %170, i32 %171, i32 0, i8* %172)
  br label %174

174:                                              ; preds = %164, %159
  %175 = bitcast %union.cvmx_l2c_err_ttgx* %8 to i8**
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @CVMX_L2C_ERR_TTGX(i32 %179)
  %181 = bitcast %union.cvmx_l2c_err_ttgx* %8 to i8**
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @cvmx_write_csr(i32 %180, i8* %182)
  br label %184

184:                                              ; preds = %178, %174
  ret void
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_L2C_ERR_TDTX(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_L2C_ERR_TTGX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
