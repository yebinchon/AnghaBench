; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_find_bb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_find_bb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, %struct.TYPE_4__*, i32, %struct.intel_vgpu* }
%struct.TYPE_4__ = type { %struct.intel_vgpu_mm* }
%struct.intel_vgpu_mm = type { i32 }
%struct.intel_vgpu = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_vgpu_mm* }
%struct.cmd_info = type { i64 }

@GTT_BUFFER = common dso_local global i64 0, align 8
@INTEL_GVT_INVALID_ADDR = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %d, workload=%p\0A\00", align 1
@PPGTT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"ppgtt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ggtt\00", align 1
@EBADRQC = common dso_local global i32 0, align 4
@OP_MI_BATCH_BUFFER_END = common dso_local global i64 0, align 8
@OP_MI_BATCH_BUFFER_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, i64*, i64*)* @find_bb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_bb_size(%struct.parser_exec_state* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parser_exec_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cmd_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_vgpu*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.intel_vgpu_mm*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %16 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %15, i32 0, i32 3
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %16, align 8
  store %struct.intel_vgpu* %17, %struct.intel_vgpu** %12, align 8
  %18 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %19 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GTT_BUFFER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %25 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %24, i32 0, i32 3
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %25, align 8
  %27 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %28, align 8
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %32 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %34, align 8
  br label %36

36:                                               ; preds = %30, %23
  %37 = phi %struct.intel_vgpu_mm* [ %29, %23 ], [ %35, %30 ]
  store %struct.intel_vgpu_mm* %37, %struct.intel_vgpu_mm** %14, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** %7, align 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %41 = call i64 @get_gma_bb_from_cmd(%struct.parser_exec_state* %40, i32 1)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %181

48:                                               ; preds = %36
  %49 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %50 = call i64 @cmd_val(%struct.parser_exec_state* %49, i32 0)
  store i64 %50, i64* %13, align 8
  %51 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %52 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %51, i32 0, i32 3
  %53 = load %struct.intel_vgpu*, %struct.intel_vgpu** %52, align 8
  %54 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %58 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.cmd_info* @get_cmd_info(i32 %55, i64 %56, i32 %59)
  store %struct.cmd_info* %60, %struct.cmd_info** %9, align 8
  %61 = load %struct.cmd_info*, %struct.cmd_info** %9, align 8
  %62 = icmp eq %struct.cmd_info* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %48
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %67 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @get_opcode(i64 %65, i32 %68)
  %70 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %71 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PPGTT_BUFFER, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %77 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %78 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %81 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %69, i8* %76, i32 %79, %struct.TYPE_4__* %82)
  %84 = load i32, i32* @EBADRQC, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %181

86:                                               ; preds = %48
  br label %87

87:                                               ; preds = %176, %86
  %88 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %89 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %88, i32 0, i32 3
  %90 = load %struct.intel_vgpu*, %struct.intel_vgpu** %89, align 8
  %91 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %14, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 4
  %95 = call i64 @copy_gma_to_hva(%struct.intel_vgpu* %90, %struct.intel_vgpu_mm* %91, i64 %92, i64 %94, i64* %13)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @EFAULT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %181

100:                                              ; preds = %87
  %101 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %102 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %101, i32 0, i32 3
  %103 = load %struct.intel_vgpu*, %struct.intel_vgpu** %102, align 8
  %104 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %108 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call %struct.cmd_info* @get_cmd_info(i32 %105, i64 %106, i32 %109)
  store %struct.cmd_info* %110, %struct.cmd_info** %9, align 8
  %111 = load %struct.cmd_info*, %struct.cmd_info** %9, align 8
  %112 = icmp eq %struct.cmd_info* %111, null
  br i1 %112, label %113, label %136

113:                                              ; preds = %100
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %117 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @get_opcode(i64 %115, i32 %118)
  %120 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %121 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PPGTT_BUFFER, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %127 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %128 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.parser_exec_state*, %struct.parser_exec_state** %5, align 8
  %131 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %114, i32 %119, i8* %126, i32 %129, %struct.TYPE_4__* %132)
  %134 = load i32, i32* @EBADRQC, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %181

136:                                              ; preds = %100
  %137 = load %struct.cmd_info*, %struct.cmd_info** %9, align 8
  %138 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @OP_MI_BATCH_BUFFER_END, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 1, i32* %11, align 4
  br label %156

143:                                              ; preds = %136
  %144 = load %struct.cmd_info*, %struct.cmd_info** %9, align 8
  %145 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @OP_MI_BATCH_BUFFER_START, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load i64, i64* %13, align 8
  %151 = call i64 @BATCH_BUFFER_2ND_LEVEL_BIT(i64 %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 1, i32* %11, align 4
  br label %154

154:                                              ; preds = %153, %149
  br label %155

155:                                              ; preds = %154, %143
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i64*, i64** %6, align 8
  %161 = load i64, i64* %160, align 8
  %162 = load i64*, i64** %7, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %159, %156
  %164 = load %struct.cmd_info*, %struct.cmd_info** %9, align 8
  %165 = load i64, i64* %13, align 8
  %166 = call i32 @get_cmd_length(%struct.cmd_info* %164, i64 %165)
  %167 = shl i32 %166, 2
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %10, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load i64*, i64** %6, align 8
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, %169
  store i64 %172, i64* %170, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* %8, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %8, align 8
  br label %176

176:                                              ; preds = %163
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  br i1 %179, label %87, label %180

180:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %113, %97, %63, %45
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i64 @get_gma_bb_from_cmd(%struct.parser_exec_state*, i32) #1

declare dso_local i64 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local %struct.cmd_info* @get_cmd_info(i32, i64, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i64, i32, i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @get_opcode(i64, i32) #1

declare dso_local i64 @copy_gma_to_hva(%struct.intel_vgpu*, %struct.intel_vgpu_mm*, i64, i64, i64*) #1

declare dso_local i64 @BATCH_BUFFER_2ND_LEVEL_BIT(i64) #1

declare dso_local i32 @get_cmd_length(%struct.cmd_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
