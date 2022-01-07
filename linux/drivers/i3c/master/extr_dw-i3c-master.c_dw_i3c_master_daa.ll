; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_daa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_daa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.dw_i3c_master = type { i32, i32, i32*, i32, i64 }
%struct.dw_i3c_xfer = type { i32, %struct.dw_i3c_cmd* }
%struct.dw_i3c_cmd = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I3C_CCC_ENTDAA = common dso_local global i32 0, align 4
@COMMAND_PORT_ADDR_ASSGN_CMD = common dso_local global i32 0, align 4
@COMMAND_PORT_TOC = common dso_local global i32 0, align 4
@COMMAND_PORT_ROC = common dso_local global i32 0, align 4
@XFER_TIMEOUT = common dso_local global i32 0, align 4
@I3C_BROADCAST_ADDR = common dso_local global i32 0, align 4
@I3C_CCC_EVENT_HJ = common dso_local global i32 0, align 4
@I3C_CCC_EVENT_MR = common dso_local global i32 0, align 4
@I3C_CCC_EVENT_SIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*)* @dw_i3c_master_daa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_master_daa(%struct.i3c_master_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca %struct.dw_i3c_master*, align 8
  %5 = alloca %struct.dw_i3c_xfer*, align 8
  %6 = alloca %struct.dw_i3c_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %3, align 8
  %13 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %14 = call %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller* %13)
  store %struct.dw_i3c_master* %14, %struct.dw_i3c_master** %4, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %16 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %17, -1
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %69, %1
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %22 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %69

32:                                               ; preds = %25
  %33 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @i3c_master_get_free_addr(%struct.i3c_master_controller* %33, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %172

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %45 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @even_parity(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 7
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @DEV_ADDR_TABLE_DYNAMIC_ADDR(i32 %57)
  %59 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %60 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %63 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @DEV_ADDR_TABLE_LOC(i32 %64, i32 %65)
  %67 = add nsw i64 %61, %66
  %68 = call i32 @writel(i32 %58, i64 %67)
  br label %69

69:                                               ; preds = %42, %31
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %19

72:                                               ; preds = %19
  %73 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %74 = call %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master* %73, i32 1)
  store %struct.dw_i3c_xfer* %74, %struct.dw_i3c_xfer** %5, align 8
  %75 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %5, align 8
  %76 = icmp ne %struct.dw_i3c_xfer* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %172

80:                                               ; preds = %72
  %81 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %82 = call i32 @dw_i3c_master_get_free_pos(%struct.dw_i3c_master* %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %5, align 8
  %84 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %83, i32 0, i32 1
  %85 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %84, align 8
  %86 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %85, i64 0
  store %struct.dw_i3c_cmd* %86, %struct.dw_i3c_cmd** %6, align 8
  %87 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %6, align 8
  %88 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %90 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @COMMAND_PORT_DEV_COUNT(i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @COMMAND_PORT_DEV_INDEX(i32 %95)
  %97 = or i32 %94, %96
  %98 = load i32, i32* @I3C_CCC_ENTDAA, align 4
  %99 = call i32 @COMMAND_PORT_CMD(i32 %98)
  %100 = or i32 %97, %99
  %101 = load i32, i32* @COMMAND_PORT_ADDR_ASSGN_CMD, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @COMMAND_PORT_TOC, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @COMMAND_PORT_ROC, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %6, align 8
  %108 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %110 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %5, align 8
  %111 = call i32 @dw_i3c_master_enqueue_xfer(%struct.dw_i3c_master* %109, %struct.dw_i3c_xfer* %110)
  %112 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %5, align 8
  %113 = getelementptr inbounds %struct.dw_i3c_xfer, %struct.dw_i3c_xfer* %112, i32 0, i32 0
  %114 = load i32, i32* @XFER_TIMEOUT, align 4
  %115 = call i32 @wait_for_completion_timeout(i32* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %80
  %118 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %119 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %5, align 8
  %120 = call i32 @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master* %118, %struct.dw_i3c_xfer* %119)
  br label %121

121:                                              ; preds = %117, %80
  %122 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %123 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dw_i3c_cmd*, %struct.dw_i3c_cmd** %6, align 8
  %126 = getelementptr inbounds %struct.dw_i3c_cmd, %struct.dw_i3c_cmd* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %124, %127
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @GENMASK(i32 %129, i32 0)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %158, %121
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %138 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @BIT(i32 %143)
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %149 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %4, align 8
  %150 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @i3c_master_add_i3c_dev_locked(%struct.i3c_master_controller* %148, i32 %155)
  br label %157

157:                                              ; preds = %147, %141
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %135

161:                                              ; preds = %135
  %162 = load %struct.dw_i3c_xfer*, %struct.dw_i3c_xfer** %5, align 8
  %163 = call i32 @dw_i3c_master_free_xfer(%struct.dw_i3c_xfer* %162)
  %164 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %165 = load i32, i32* @I3C_BROADCAST_ADDR, align 4
  %166 = load i32, i32* @I3C_CCC_EVENT_HJ, align 4
  %167 = load i32, i32* @I3C_CCC_EVENT_MR, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @I3C_CCC_EVENT_SIR, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @i3c_master_disec_locked(%struct.i3c_master_controller* %164, i32 %165, i32 %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %161, %77, %39
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i3c_master_get_free_addr(%struct.i3c_master_controller*, i32) #1

declare dso_local i32 @even_parity(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @DEV_ADDR_TABLE_DYNAMIC_ADDR(i32) #1

declare dso_local i64 @DEV_ADDR_TABLE_LOC(i32, i32) #1

declare dso_local %struct.dw_i3c_xfer* @dw_i3c_master_alloc_xfer(%struct.dw_i3c_master*, i32) #1

declare dso_local i32 @dw_i3c_master_get_free_pos(%struct.dw_i3c_master*) #1

declare dso_local i32 @COMMAND_PORT_DEV_COUNT(i32) #1

declare dso_local i32 @COMMAND_PORT_DEV_INDEX(i32) #1

declare dso_local i32 @COMMAND_PORT_CMD(i32) #1

declare dso_local i32 @dw_i3c_master_enqueue_xfer(%struct.dw_i3c_master*, %struct.dw_i3c_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dw_i3c_master_dequeue_xfer(%struct.dw_i3c_master*, %struct.dw_i3c_xfer*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @i3c_master_add_i3c_dev_locked(%struct.i3c_master_controller*, i32) #1

declare dso_local i32 @dw_i3c_master_free_xfer(%struct.dw_i3c_xfer*) #1

declare dso_local i32 @i3c_master_disec_locked(%struct.i3c_master_controller*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
