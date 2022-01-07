; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_info = type { i32 }

@ring_decode_info = common dso_local global %struct.decode_info*** null, align 8
@INVALID_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_opcode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.decode_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.decode_info***, %struct.decode_info**** @ring_decode_info, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.decode_info**, %struct.decode_info*** %7, i64 %9
  %11 = load %struct.decode_info**, %struct.decode_info*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @CMD_TYPE(i32 %12)
  %14 = getelementptr inbounds %struct.decode_info*, %struct.decode_info** %11, i64 %13
  %15 = load %struct.decode_info*, %struct.decode_info** %14, align 8
  store %struct.decode_info* %15, %struct.decode_info** %6, align 8
  %16 = load %struct.decode_info*, %struct.decode_info** %6, align 8
  %17 = icmp eq %struct.decode_info* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @INVALID_OP, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.decode_info*, %struct.decode_info** %6, align 8
  %23 = getelementptr inbounds %struct.decode_info, %struct.decode_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 32, %24
  %26 = ashr i32 %21, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @CMD_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
