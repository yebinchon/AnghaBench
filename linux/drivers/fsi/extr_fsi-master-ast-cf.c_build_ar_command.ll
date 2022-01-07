; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_build_ar_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_build_ar_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32 }
%struct.fsi_msg = type { i64, i64 }

@FSI_CMD_SAME_AR = common dso_local global i32 0, align 4
@FSI_CMD_REL_AR = common dso_local global i32 0, align 4
@FSI_CMD_ABS_AR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master_acf*, %struct.fsi_msg*, i32, i32, i64, i8*)* @build_ar_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_ar_command(%struct.fsi_master_acf* %0, %struct.fsi_msg* %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.fsi_master_acf*, align 8
  %8 = alloca %struct.fsi_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %7, align 8
  store %struct.fsi_msg* %1, %struct.fsi_msg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %16, align 4
  %25 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %26 = getelementptr inbounds %struct.fsi_msg, %struct.fsi_msg* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %28 = getelementptr inbounds %struct.fsi_msg, %struct.fsi_msg* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 2097151
  store i32 %30, i32* %10, align 4
  store i32 3, i32* %15, align 4
  %31 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @check_same_address(%struct.fsi_master_acf* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  store i32 2, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %37 = load i32, i32* @FSI_CMD_SAME_AR, align 4
  store i32 %37, i32* %18, align 4
  %38 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %7, align 8
  %39 = call i32 @trace_fsi_master_acf_cmd_same_addr(%struct.fsi_master_acf* %38)
  br label %58

40:                                               ; preds = %6
  %41 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @check_relative_address(%struct.fsi_master_acf* %41, i32 %42, i32 %43, i32* %19)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  store i32 9, i32* %14, align 4
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @FSI_CMD_REL_AR, align 4
  store i32 %48, i32* %18, align 4
  %49 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %7, align 8
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @trace_fsi_master_acf_cmd_rel_addr(%struct.fsi_master_acf* %49, i32 %50)
  br label %57

52:                                               ; preds = %40
  store i32 21, i32* %14, align 4
  %53 = load i32, i32* @FSI_CMD_ABS_AR, align 4
  store i32 %53, i32* %18, align 4
  %54 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @trace_fsi_master_acf_cmd_abs_addr(%struct.fsi_master_acf* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i64, i64* %11, align 8
  %60 = icmp ugt i64 %59, 1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %17, align 4
  %63 = load i64, i64* %11, align 8
  %64 = sub i64 %63, 1
  %65 = xor i64 %64, -1
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %58
  %76 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @msg_push_bits(%struct.fsi_msg* %76, i32 %77, i32 2)
  %79 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @msg_push_bits(%struct.fsi_msg* %79, i32 %80, i32 %81)
  %83 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 1
  %88 = call i32 @msg_push_bits(%struct.fsi_msg* %83, i32 %87, i32 1)
  %89 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @msg_push_bits(%struct.fsi_msg* %89, i32 %90, i32 %91)
  %93 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @msg_push_bits(%struct.fsi_msg* %93, i32 %94, i32 1)
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %115, %75
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %11, align 8
  %103 = icmp ult i64 %101, %102
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i1 [ false, %96 ], [ %103, %99 ]
  br i1 %105, label %106, label %118

106:                                              ; preds = %104
  %107 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @msg_push_bits(%struct.fsi_msg* %107, i32 %113, i32 8)
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %96

118:                                              ; preds = %104
  %119 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %120 = call i32 @msg_push_crc(%struct.fsi_msg* %119)
  %121 = load %struct.fsi_msg*, %struct.fsi_msg** %8, align 8
  %122 = call i32 @msg_finish_cmd(%struct.fsi_msg* %121)
  ret void
}

declare dso_local i64 @check_same_address(%struct.fsi_master_acf*, i32, i32) #1

declare dso_local i32 @trace_fsi_master_acf_cmd_same_addr(%struct.fsi_master_acf*) #1

declare dso_local i64 @check_relative_address(%struct.fsi_master_acf*, i32, i32, i32*) #1

declare dso_local i32 @trace_fsi_master_acf_cmd_rel_addr(%struct.fsi_master_acf*, i32) #1

declare dso_local i32 @trace_fsi_master_acf_cmd_abs_addr(%struct.fsi_master_acf*, i32) #1

declare dso_local i32 @msg_push_bits(%struct.fsi_msg*, i32, i32) #1

declare dso_local i32 @msg_push_crc(%struct.fsi_msg*) #1

declare dso_local i32 @msg_finish_cmd(%struct.fsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
