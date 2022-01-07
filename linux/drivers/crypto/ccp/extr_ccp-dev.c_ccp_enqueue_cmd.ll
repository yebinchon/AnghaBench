; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_enqueue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_enqueue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd = type { i32, i32, %struct.ccp_device*, i32 }
%struct.ccp_device = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_CMD_QLEN = common dso_local global i64 0, align 8
@CCP_CMD_MAY_BACKLOG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_enqueue_cmd(%struct.ccp_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccp_cmd*, align 8
  %4 = alloca %struct.ccp_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccp_cmd* %0, %struct.ccp_cmd** %3, align 8
  %8 = load %struct.ccp_cmd*, %struct.ccp_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %8, i32 0, i32 2
  %10 = load %struct.ccp_device*, %struct.ccp_device** %9, align 8
  %11 = icmp ne %struct.ccp_device* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ccp_cmd*, %struct.ccp_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %13, i32 0, i32 2
  %15 = load %struct.ccp_device*, %struct.ccp_device** %14, align 8
  br label %18

16:                                               ; preds = %1
  %17 = call %struct.ccp_device* (...) @ccp_get_device()
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi %struct.ccp_device* [ %15, %12 ], [ %17, %16 ]
  store %struct.ccp_device* %19, %struct.ccp_device** %4, align 8
  %20 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %21 = icmp ne %struct.ccp_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %130

25:                                               ; preds = %18
  %26 = load %struct.ccp_cmd*, %struct.ccp_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %130

33:                                               ; preds = %25
  %34 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %35 = load %struct.ccp_cmd*, %struct.ccp_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %35, i32 0, i32 2
  store %struct.ccp_device* %34, %struct.ccp_device** %36, align 8
  %37 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %38 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %37, i32 0, i32 3
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %42 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %45 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAX_CMD_QLEN, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %33
  %50 = load %struct.ccp_cmd*, %struct.ccp_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CCP_CMD_MAY_BACKLOG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ccp_cmd*, %struct.ccp_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %59, i32 0, i32 1
  %61 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %62 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %61, i32 0, i32 6
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  br label %67

64:                                               ; preds = %49
  %65 = load i32, i32* @ENOSPC, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %56
  br label %108

68:                                               ; preds = %33
  %69 = load i32, i32* @EINPROGRESS, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %72 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.ccp_cmd*, %struct.ccp_cmd** %3, align 8
  %76 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %75, i32 0, i32 1
  %77 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %78 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %77, i32 0, i32 5
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %81 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %88 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %93 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %103

102:                                              ; preds = %91
  br label %106

103:                                              ; preds = %101
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %85

106:                                              ; preds = %102, %85
  br label %107

107:                                              ; preds = %106, %68
  br label %108

108:                                              ; preds = %107, %67
  %109 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %110 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %109, i32 0, i32 3
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %115 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %113, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = load %struct.ccp_device*, %struct.ccp_device** %4, align 8
  %120 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @wake_up_process(i32 %126)
  br label %128

128:                                              ; preds = %118, %108
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %30, %22
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.ccp_device* @ccp_get_device(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
