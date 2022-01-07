; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_apb_access_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_risc_apb_access_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OUT_MSG_BRIDGE_APB_W = common dso_local global i32 0, align 4
@IN_MSG_END_BRIDGE_APB_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32, i32, i32*, i32)* @dib9000_risc_apb_access_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_risc_apb_access_write(%struct.dib9000_state* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 1024
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %19 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %101

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 18
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %101

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %60, %33
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %47, %53
  %55 = load i32, i32* %14, align 4
  %56 = sdiv i32 %55, 2
  %57 = add nsw i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %58
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %14, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %75, 2
  %77 = add nsw i32 1, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %78
  store i32 %74, i32* %79, align 4
  br label %80

80:                                               ; preds = %67, %63
  %81 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %82 = load i32, i32* @OUT_MSG_BRIDGE_APB_W, align 4
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 3, %84
  %86 = sdiv i32 %85, 2
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dib9000_mbx_send_attr(%struct.dib9000_state* %81, i32 %82, i32* %83, i32 %86, i32 %87)
  %89 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %90 = load i32, i32* @IN_MSG_END_BRIDGE_APB_RW, align 4
  %91 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @dib9000_mbx_get_message_attr(%struct.dib9000_state* %89, i32 %90, i32* %91, i32* %13, i32 %92)
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %99

96:                                               ; preds = %80
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i32 [ 0, %95 ], [ %98, %96 ]
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %30, %24
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @dib9000_mbx_send_attr(%struct.dib9000_state*, i32, i32*, i32, i32) #1

declare dso_local i32 @dib9000_mbx_get_message_attr(%struct.dib9000_state*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
