; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { %struct.ib_send_wr* }
%struct.rvt_qp = type { i64, i64, i32, i32 }
%struct.rvt_dev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.rvt_qp*)*, i32 (%struct.rvt_qp*)* }

@ib_rvt_state_ops = common dso_local global i32* null, align 8
@RVT_POST_SEND_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca %struct.rvt_dev_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = call %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp* %14)
  store %struct.rvt_qp* %15, %struct.rvt_qp** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %18)
  store %struct.rvt_dev_info* %19, %struct.rvt_dev_info** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %21 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %20, i32 0, i32 2
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32*, i32** @ib_rvt_state_ops, align 8
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RVT_POST_SEND_OK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %39 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %38, i32 0, i32 2
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %113

44:                                               ; preds = %3
  %45 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %46 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %49 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @READ_ONCE(i32 %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %54, i32 0, i32 0
  %56 = load %struct.ib_send_wr*, %struct.ib_send_wr** %55, align 8
  %57 = icmp ne %struct.ib_send_wr* %56, null
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %53, %44
  %60 = phi i1 [ false, %44 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %78, %59
  %63 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %64 = icmp ne %struct.ib_send_wr* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %67 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %68 = call i32 @rvt_post_one_wr(%struct.rvt_qp* %66, %struct.ib_send_wr* %67, i32* %11)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %74 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %73, %struct.ib_send_wr** %74, align 8
  br label %83

75:                                               ; preds = %65
  %76 = load i32, i32* %12, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75
  %79 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %80 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %79, i32 0, i32 0
  %81 = load %struct.ib_send_wr*, %struct.ib_send_wr** %80, align 8
  store %struct.ib_send_wr* %81, %struct.ib_send_wr** %6, align 8
  br label %62

82:                                               ; preds = %62
  br label %83

83:                                               ; preds = %82, %72
  %84 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %85 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %84, i32 0, i32 2
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %98 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32 (%struct.rvt_qp*)*, i32 (%struct.rvt_qp*)** %99, align 8
  %101 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %102 = call i32 %100(%struct.rvt_qp* %101)
  br label %110

103:                                              ; preds = %93, %90
  %104 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %105 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32 (%struct.rvt_qp*)*, i32 (%struct.rvt_qp*)** %106, align 8
  %108 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %109 = call i32 %107(%struct.rvt_qp* %108)
  br label %110

110:                                              ; preds = %103, %96
  br label %111

111:                                              ; preds = %110, %83
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %37
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.rvt_qp* @ibqp_to_rvtqp(%struct.ib_qp*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @rvt_post_one_wr(%struct.rvt_qp*, %struct.ib_send_wr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
