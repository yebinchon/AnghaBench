; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i64, i64, i32, i32, i32, %struct.cs_mmap_config_block*, %struct.hsi_client*, i32 }
%struct.cs_mmap_config_block = type { i32 }
%struct.hsi_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cs_hsi_start\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CS_STATE_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to alloc HSI messages\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to alloc HSI messages for data\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Could not open, HSI port already claimed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not get HSI master client\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"HSI port not initialized\0A\00", align 1
@CS_STATE_OPENED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"cs_hsi_start...done\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"cs_hsi_start...done/error\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_hsi_iface**, %struct.hsi_client*, i64, i64)* @cs_hsi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_hsi_start(%struct.cs_hsi_iface** %0, %struct.hsi_client* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_hsi_iface**, align 8
  %7 = alloca %struct.hsi_client*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cs_hsi_iface*, align 8
  store %struct.cs_hsi_iface** %0, %struct.cs_hsi_iface*** %6, align 8
  store %struct.hsi_client* %1, %struct.hsi_client** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cs_hsi_iface* @kzalloc(i32 56, i32 %12)
  store %struct.cs_hsi_iface* %13, %struct.cs_hsi_iface** %11, align 8
  %14 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %15 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %18 = icmp ne %struct.cs_hsi_iface* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %135

22:                                               ; preds = %4
  %23 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %24 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %23, i32 0, i32 7
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %27 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %28 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %27, i32 0, i32 6
  store %struct.hsi_client* %26, %struct.hsi_client** %28, align 8
  %29 = load i32, i32* @CS_STATE_CLOSED, align 4
  %30 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %31 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = inttoptr i64 %32 to %struct.cs_mmap_config_block*
  %34 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %35 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %34, i32 0, i32 5
  store %struct.cs_mmap_config_block* %33, %struct.cs_mmap_config_block** %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %38 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %41 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %43 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %42, i32 0, i32 5
  %44 = load %struct.cs_mmap_config_block*, %struct.cs_mmap_config_block** %43, align 8
  %45 = call i32 @memset(%struct.cs_mmap_config_block* %44, i32 0, i32 4)
  %46 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %47 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %46, i32 0, i32 4
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %50 = call i32 @cs_alloc_cmds(%struct.cs_hsi_iface* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %22
  %54 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %55 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %132

57:                                               ; preds = %22
  %58 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %59 = call i32 @cs_hsi_alloc_data(%struct.cs_hsi_iface* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %64 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %129

66:                                               ; preds = %57
  %67 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %68 = call i32 @hsi_claim_port(%struct.hsi_client* %67, i32 1)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %73 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %126

75:                                               ; preds = %66
  %76 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %77 = call i32 @ssip_slave_get_master(%struct.hsi_client* %76)
  %78 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %79 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %81 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %87 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @PTR_ERR(i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %91 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %123

93:                                               ; preds = %75
  %94 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %95 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ssip_slave_running(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %103 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %123

105:                                              ; preds = %93
  %106 = load i32, i32* @CS_STATE_OPENED, align 4
  %107 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %108 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = call i32 (...) @local_bh_disable()
  %110 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %111 = call i32 @cs_hsi_read_on_control(%struct.cs_hsi_iface* %110)
  %112 = call i32 (...) @local_bh_enable()
  %113 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %114 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %113, i32 0, i32 0
  %115 = call i32 @dev_dbg(i32* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %116 = load %struct.cs_hsi_iface**, %struct.cs_hsi_iface*** %6, align 8
  %117 = icmp ne %struct.cs_hsi_iface** %116, null
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUG_ON(i32 %119)
  %121 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %122 = load %struct.cs_hsi_iface**, %struct.cs_hsi_iface*** %6, align 8
  store %struct.cs_hsi_iface* %121, %struct.cs_hsi_iface** %122, align 8
  store i32 0, i32* %5, align 4
  br label %140

123:                                              ; preds = %99, %85
  %124 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %125 = call i32 @hsi_release_port(%struct.hsi_client* %124)
  br label %126

126:                                              ; preds = %123, %71
  %127 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %128 = call i32 @cs_hsi_free_data(%struct.cs_hsi_iface* %127)
  br label %129

129:                                              ; preds = %126, %62
  %130 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %131 = call i32 @cs_free_cmds(%struct.cs_hsi_iface* %130)
  br label %132

132:                                              ; preds = %129, %53
  %133 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %11, align 8
  %134 = call i32 @kfree(%struct.cs_hsi_iface* %133)
  br label %135

135:                                              ; preds = %132, %19
  %136 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %137 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %136, i32 0, i32 0
  %138 = call i32 @dev_dbg(i32* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %135, %105
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.cs_hsi_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(%struct.cs_mmap_config_block*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @cs_alloc_cmds(%struct.cs_hsi_iface*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cs_hsi_alloc_data(%struct.cs_hsi_iface*) #1

declare dso_local i32 @hsi_claim_port(%struct.hsi_client*, i32) #1

declare dso_local i32 @ssip_slave_get_master(%struct.hsi_client*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ssip_slave_running(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @cs_hsi_read_on_control(%struct.cs_hsi_iface*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hsi_release_port(%struct.hsi_client*) #1

declare dso_local i32 @cs_hsi_free_data(%struct.cs_hsi_iface*) #1

declare dso_local i32 @cs_free_cmds(%struct.cs_hsi_iface*) #1

declare dso_local i32 @kfree(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
