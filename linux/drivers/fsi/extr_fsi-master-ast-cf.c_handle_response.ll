; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_handle_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i64, i32 }
%struct.fsi_msg = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@FSI_CRC_ERR_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FSI_MASTER_EPOLL_CLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error %d clocking zeros for E_POLL\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error %d sending E_POLL\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Busy, retrying...\0A\00", align 1
@FSI_MASTER_DPOLL_CLOCKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Error %d clocking zeros for D_POLL\0A\00", align 1
@FSI_MASTER_MAX_BUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Error %d sending D_POLL\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"ERR slave is stuck in busy state, issuing TERM\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"ERRA received\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ERRC received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*, i32, i32, i8*)* @handle_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_response(%struct.fsi_master_acf* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master_acf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fsi_msg, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %152, %72, %4
  %17 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @read_copro_response(%struct.fsi_master_acf* %17, i32 %18, i32* %14, i32* %15)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %16
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @FSI_CRC_ERR_RETRIES, align 4
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %194

32:                                               ; preds = %24
  %33 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @trace_fsi_master_acf_crc_rsp_error(%struct.fsi_master_acf* %33, i32 %34)
  %36 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %37 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %42 = call i32 @dump_ucode_trace(%struct.fsi_master_acf* %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %45 = load i32, i32* @FSI_MASTER_EPOLL_CLOCKS, align 4
  %46 = call i32 @clock_zeros(%struct.fsi_master_acf* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %51 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %203

56:                                               ; preds = %43
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @build_epoll_command(%struct.fsi_msg* %13, i32 %57)
  %59 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @send_request(%struct.fsi_master_acf* %59, %struct.fsi_msg* %13, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %66 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dev_warn(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %203

72:                                               ; preds = %56
  br label %16

73:                                               ; preds = %16
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %203

78:                                               ; preds = %73
  %79 = load i32, i32* %15, align 4
  switch i32 %79, label %193 [
    i32 131, label %80
    i32 130, label %109
    i32 129, label %163
    i32 128, label %178
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @cpu_to_be32(i32 %90)
  %92 = load i8*, i8** %9, align 8
  %93 = bitcast i8* %92 to i32*
  store i32 %91, i32* %93, align 4
  br label %107

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 16
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @cpu_to_be16(i32 %98)
  %100 = load i8*, i8** %9, align 8
  %101 = bitcast i8* %100 to i32*
  store i32 %99, i32* %101, align 4
  br label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %14, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = bitcast i8* %104 to i32*
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %97
  br label %107

107:                                              ; preds = %106, %89
  br label %108

108:                                              ; preds = %107, %83, %80
  br label %193

109:                                              ; preds = %78
  %110 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %111 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %115 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %120 = call i32 @dump_ucode_trace(%struct.fsi_master_acf* %119)
  br label %121

121:                                              ; preds = %118, %109
  %122 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %123 = load i32, i32* @FSI_MASTER_DPOLL_CLOCKS, align 4
  %124 = call i32 @clock_zeros(%struct.fsi_master_acf* %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %129 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @dev_warn(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %193

133:                                              ; preds = %121
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @FSI_MASTER_MAX_BUSY, align 4
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @build_dpoll_command(%struct.fsi_msg* %13, i32 %139)
  %141 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @send_request(%struct.fsi_master_acf* %141, %struct.fsi_msg* %13, i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %148 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @dev_warn(i32 %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %193

152:                                              ; preds = %138
  br label %16

153:                                              ; preds = %133
  %154 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %155 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @dev_dbg(i32 %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %158 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @send_term(%struct.fsi_master_acf* %158, i32 %159)
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %11, align 4
  br label %193

163:                                              ; preds = %78
  %164 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %165 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @dev_dbg(i32 %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %168 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %169 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %174 = call i32 @dump_ucode_trace(%struct.fsi_master_acf* %173)
  br label %175

175:                                              ; preds = %172, %163
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %11, align 4
  br label %193

178:                                              ; preds = %78
  %179 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %180 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @dev_dbg(i32 %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %183 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %184 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %189 = call i32 @dump_ucode_trace(%struct.fsi_master_acf* %188)
  br label %190

190:                                              ; preds = %187, %178
  %191 = load i32, i32* @EAGAIN, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %78, %190, %175, %153, %146, %127, %108
  br label %194

194:                                              ; preds = %193, %29
  %195 = load i32, i32* %10, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @trace_fsi_master_acf_poll_response_busy(%struct.fsi_master_acf* %198, i32 %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %201, %76, %64, %49
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @read_copro_response(%struct.fsi_master_acf*, i32, i32*, i32*) #1

declare dso_local i32 @trace_fsi_master_acf_crc_rsp_error(%struct.fsi_master_acf*, i32) #1

declare dso_local i32 @dump_ucode_trace(%struct.fsi_master_acf*) #1

declare dso_local i32 @clock_zeros(%struct.fsi_master_acf*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @build_epoll_command(%struct.fsi_msg*, i32) #1

declare dso_local i32 @send_request(%struct.fsi_master_acf*, %struct.fsi_msg*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @build_dpoll_command(%struct.fsi_msg*, i32) #1

declare dso_local i32 @send_term(%struct.fsi_master_acf*, i32) #1

declare dso_local i32 @trace_fsi_master_acf_poll_response_busy(%struct.fsi_master_acf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
