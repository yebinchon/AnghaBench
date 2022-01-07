; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_msg.c_vmw_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_channel = type { i64, i64, i32 }

@RETRIES = common dso_local global i32 0, align 4
@VMW_PORT_CMD_RECVSIZE = common dso_local global i32 0, align 4
@VMW_HYPERVISOR_MAGIC = common dso_local global i32 0, align 4
@MESSAGE_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to get reply size for host message.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MESSAGE_STATUS_DORECV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Cannot allocate memory for host message reply.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MESSAGE_STATUS_HB = common dso_local global i32 0, align 4
@MESSAGE_STATUS_CPT = common dso_local global i32 0, align 4
@VMW_PORT_CMD_RECVSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_channel*, i8**, i64*)* @vmw_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_recv_msg(%struct.rpc_channel* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_channel*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.rpc_channel* %0, %struct.rpc_channel** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  %18 = load i8**, i8*** %6, align 8
  store i8* null, i8** %18, align 8
  br label %19

19:                                               ; preds = %144, %101, %3
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* @RETRIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %149

23:                                               ; preds = %19
  %24 = load i32, i32* %16, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %16, align 4
  %26 = load %struct.rpc_channel*, %struct.rpc_channel** %5, align 8
  %27 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load %struct.rpc_channel*, %struct.rpc_channel** %5, align 8
  %30 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* @VMW_PORT_CMD_RECVSIZE, align 4
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.rpc_channel*, %struct.rpc_channel** %5, align 8
  %36 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 16
  %39 = load i32, i32* @VMW_HYPERVISOR_MAGIC, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @VMW_PORT(i32 %32, i32 0, i64 %33, i64 %34, i32 %38, i32 %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @HIGH_WORD(i64 %47)
  %49 = load i32, i32* @MESSAGE_STATUS_SUCCESS, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %23
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %160

56:                                               ; preds = %23
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @HIGH_WORD(i64 %57)
  %59 = load i32, i32* @MESSAGE_STATUS_DORECV, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %160

63:                                               ; preds = %56
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %65, 1
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kzalloc(i64 %66, i32 %67)
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %160

75:                                               ; preds = %63
  %76 = load %struct.rpc_channel*, %struct.rpc_channel** %5, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @HIGH_WORD(i64 %79)
  %81 = load i32, i32* @MESSAGE_STATUS_HB, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @vmw_port_hb_in(%struct.rpc_channel* %76, i8* %77, i64 %78, i32 %86)
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @HIGH_WORD(i64 %88)
  %90 = load i32, i32* @MESSAGE_STATUS_SUCCESS, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %75
  %94 = load i8*, i8** %14, align 8
  %95 = call i32 @kfree(i8* %94)
  store i8* null, i8** %14, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @HIGH_WORD(i64 %96)
  %98 = load i32, i32* @MESSAGE_STATUS_CPT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %19

102:                                              ; preds = %93
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %160

105:                                              ; preds = %75
  %106 = load i8*, i8** %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load %struct.rpc_channel*, %struct.rpc_channel** %5, align 8
  %110 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %12, align 8
  %112 = load %struct.rpc_channel*, %struct.rpc_channel** %5, align 8
  %113 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %13, align 8
  %115 = load i32, i32* @VMW_PORT_CMD_RECVSTATUS, align 4
  %116 = load i32, i32* @MESSAGE_STATUS_SUCCESS, align 4
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.rpc_channel*, %struct.rpc_channel** %5, align 8
  %120 = getelementptr inbounds %struct.rpc_channel, %struct.rpc_channel* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 16
  %123 = load i32, i32* @VMW_HYPERVISOR_MAGIC, align 4
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @VMW_PORT(i32 %115, i32 %116, i64 %117, i64 %118, i32 %122, i32 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @HIGH_WORD(i64 %131)
  %133 = load i32, i32* @MESSAGE_STATUS_SUCCESS, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %105
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @kfree(i8* %137)
  store i8* null, i8** %14, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @HIGH_WORD(i64 %139)
  %141 = load i32, i32* @MESSAGE_STATUS_CPT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %19

145:                                              ; preds = %136
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %160

148:                                              ; preds = %105
  br label %149

149:                                              ; preds = %148, %19
  %150 = load i8*, i8** %14, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %160

155:                                              ; preds = %149
  %156 = load i64, i64* %15, align 8
  %157 = load i64*, i64** %7, align 8
  store i64 %156, i64* %157, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = load i8**, i8*** %6, align 8
  store i8* %158, i8** %159, align 8
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %155, %152, %145, %102, %71, %62, %52
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @VMW_PORT(i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HIGH_WORD(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i64 @vmw_port_hb_in(%struct.rpc_channel*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
