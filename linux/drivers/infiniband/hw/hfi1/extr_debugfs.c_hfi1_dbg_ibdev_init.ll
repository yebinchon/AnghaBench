; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c_hfi1_dbg_ibdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c_hfi1_dbg_ibdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_14__ }
%struct.hfi1_ibdev = type { i32, i32, %struct.hfi1_ibdev*, i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.hfi1_devdata = type { i32, i32, %struct.hfi1_devdata*, i32, %struct.dentry* }
%struct.hfi1_pportdata = type { i32, i32, %struct.hfi1_pportdata*, i32, %struct.dentry* }

@hfi1_dbg_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"opcode_stats\00", align 1
@_opcode_stats_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"tx_opcode_stats\00", align 1
@_tx_opcode_stats_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"ctx_stats\00", align 1
@_ctx_stats_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"qp_stats\00", align 1
@_qp_stats_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"sdes\00", align 1
@_sdes_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"rcds\00", align 1
@_rcds_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"pios\00", align 1
@_pios_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"sdma_cpu_list\00", align 1
@_sdma_cpu_list_file_ops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@cntr_ops = common dso_local global %struct.TYPE_13__* null, align 8
@port_cntr_ops = common dso_local global %struct.TYPE_13__* null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_dbg_ibdev_init(%struct.hfi1_ibdev* %0) #0 {
  %2 = alloca %struct.hfi1_ibdev*, align 8
  %3 = alloca [15 x i8], align 1
  %4 = alloca [10 x i8], align 1
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca %struct.hfi1_pportdata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_ibdev* %0, %struct.hfi1_ibdev** %2, align 8
  %11 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %12 = bitcast %struct.hfi1_ibdev* %11 to %struct.hfi1_pportdata*
  %13 = call %struct.hfi1_pportdata* @dd_from_dev(%struct.hfi1_pportdata* %12)
  %14 = bitcast %struct.hfi1_pportdata* %13 to %struct.hfi1_devdata*
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %5, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @hfi1_dbg_root, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %163

21:                                               ; preds = %1
  %22 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %23 = call i8* (...) @class_name()
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %22, i32 15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %30 = load i32, i32* @hfi1_dbg_root, align 4
  %31 = call %struct.dentry* @debugfs_create_dir(i8* %29, i32 %30)
  store %struct.dentry* %31, %struct.dentry** %7, align 8
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %34 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %33, i32 0, i32 4
  store %struct.dentry* %32, %struct.dentry** %34, align 8
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %36 = load i32, i32* @hfi1_dbg_root, align 4
  %37 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %38 = call i32 @debugfs_create_symlink(i8* %35, i32 %36, i8* %37)
  %39 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %40 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %43 = bitcast %struct.hfi1_ibdev* %42 to %struct.hfi1_pportdata*
  %44 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %41, %struct.hfi1_pportdata* %43, %struct.TYPE_14__* @_opcode_stats_file_ops)
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %47 = bitcast %struct.hfi1_ibdev* %46 to %struct.hfi1_pportdata*
  %48 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 292, %struct.dentry* %45, %struct.hfi1_pportdata* %47, %struct.TYPE_14__* @_tx_opcode_stats_file_ops)
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %51 = bitcast %struct.hfi1_ibdev* %50 to %struct.hfi1_pportdata*
  %52 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 292, %struct.dentry* %49, %struct.hfi1_pportdata* %51, %struct.TYPE_14__* @_ctx_stats_file_ops)
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %55 = bitcast %struct.hfi1_ibdev* %54 to %struct.hfi1_pportdata*
  %56 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 292, %struct.dentry* %53, %struct.hfi1_pportdata* %55, %struct.TYPE_14__* @_qp_stats_file_ops)
  %57 = load %struct.dentry*, %struct.dentry** %7, align 8
  %58 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %59 = bitcast %struct.hfi1_ibdev* %58 to %struct.hfi1_pportdata*
  %60 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 292, %struct.dentry* %57, %struct.hfi1_pportdata* %59, %struct.TYPE_14__* @_sdes_file_ops)
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  %62 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %63 = bitcast %struct.hfi1_ibdev* %62 to %struct.hfi1_pportdata*
  %64 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 292, %struct.dentry* %61, %struct.hfi1_pportdata* %63, %struct.TYPE_14__* @_rcds_file_ops)
  %65 = load %struct.dentry*, %struct.dentry** %7, align 8
  %66 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %67 = bitcast %struct.hfi1_ibdev* %66 to %struct.hfi1_pportdata*
  %68 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 292, %struct.dentry* %65, %struct.hfi1_pportdata* %67, %struct.TYPE_14__* @_pios_file_ops)
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %71 = bitcast %struct.hfi1_ibdev* %70 to %struct.hfi1_pportdata*
  %72 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 292, %struct.dentry* %69, %struct.hfi1_pportdata* %71, %struct.TYPE_14__* @_sdma_cpu_list_file_ops)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %94, %21
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cntr_ops, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cntr_ops, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.dentry*, %struct.dentry** %7, align 8
  %86 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %87 = bitcast %struct.hfi1_devdata* %86 to %struct.hfi1_pportdata*
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cntr_ops, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = call i32 @debugfs_create_file(i8* %84, i32 292, %struct.dentry* %85, %struct.hfi1_pportdata* %87, %struct.TYPE_14__* %92)
  br label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %99 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %98, i32 0, i32 2
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %99, align 8
  %101 = bitcast %struct.hfi1_devdata* %100 to %struct.hfi1_pportdata*
  store %struct.hfi1_pportdata* %101, %struct.hfi1_pportdata** %6, align 8
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %154, %97
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %105 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %159

108:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %150, %108
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** @port_cntr_ops, align 8
  %112 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %111)
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %109
  %115 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** @port_cntr_ops, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %115, i32 15, i8* %121, i32 %123)
  %125 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** @port_cntr_ops, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %114
  %135 = load i32, i32* @S_IRUGO, align 4
  br label %140

136:                                              ; preds = %114
  %137 = load i32, i32* @S_IRUGO, align 4
  %138 = load i32, i32* @S_IWUSR, align 4
  %139 = or i32 %137, %138
  br label %140

140:                                              ; preds = %136, %134
  %141 = phi i32 [ %135, %134 ], [ %139, %136 ]
  %142 = load %struct.dentry*, %struct.dentry** %7, align 8
  %143 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** @port_cntr_ops, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = call i32 @debugfs_create_file(i8* %125, i32 %141, %struct.dentry* %142, %struct.hfi1_pportdata* %143, %struct.TYPE_14__* %148)
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %109

153:                                              ; preds = %109
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  %157 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %158 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %157, i32 1
  store %struct.hfi1_pportdata* %158, %struct.hfi1_pportdata** %6, align 8
  br label %102

159:                                              ; preds = %102
  %160 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %2, align 8
  %161 = bitcast %struct.hfi1_ibdev* %160 to %struct.hfi1_pportdata*
  %162 = call i32 @hfi1_fault_init_debugfs(%struct.hfi1_pportdata* %161)
  br label %163

163:                                              ; preds = %159, %20
  ret void
}

declare dso_local %struct.hfi1_pportdata* @dd_from_dev(%struct.hfi1_pportdata*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @class_name(...) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_symlink(i8*, i32, i8*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.hfi1_pportdata*, %struct.TYPE_14__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @hfi1_fault_init_debugfs(%struct.hfi1_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
