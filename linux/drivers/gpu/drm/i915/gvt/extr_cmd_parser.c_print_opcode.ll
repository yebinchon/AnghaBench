; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_print_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_print_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_info = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ring_decode_info = common dso_local global %struct.decode_info*** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"opcode=0x%x %s sub_ops:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opcode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.decode_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.decode_info***, %struct.decode_info**** @ring_decode_info, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.decode_info**, %struct.decode_info*** %7, i64 %9
  %11 = load %struct.decode_info**, %struct.decode_info*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @CMD_TYPE(i32 %12)
  %14 = getelementptr inbounds %struct.decode_info*, %struct.decode_info** %11, i64 %13
  %15 = load %struct.decode_info*, %struct.decode_info** %14, align 8
  store %struct.decode_info* %15, %struct.decode_info** %5, align 8
  %16 = load %struct.decode_info*, %struct.decode_info** %5, align 8
  %17 = icmp eq %struct.decode_info* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %61

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.decode_info*, %struct.decode_info** %5, align 8
  %22 = getelementptr inbounds %struct.decode_info, %struct.decode_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 32, %23
  %25 = ashr i32 %20, %24
  %26 = load %struct.decode_info*, %struct.decode_info** %5, align 8
  %27 = getelementptr inbounds %struct.decode_info, %struct.decode_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gvt_dbg_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %56, %19
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.decode_info*, %struct.decode_info** %5, align 8
  %33 = getelementptr inbounds %struct.decode_info, %struct.decode_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.decode_info*, %struct.decode_info** %5, align 8
  %39 = getelementptr inbounds %struct.decode_info, %struct.decode_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.decode_info*, %struct.decode_info** %5, align 8
  %47 = getelementptr inbounds %struct.decode_info, %struct.decode_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sub_op_val(i32 %37, i32 %45, i32 %53)
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %30

59:                                               ; preds = %30
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %18
  ret void
}

declare dso_local i64 @CMD_TYPE(i32) #1

declare dso_local i32 @gvt_dbg_cmd(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sub_op_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
