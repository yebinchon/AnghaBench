; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_use_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_cmd_use_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_CMD_USE_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_cmd_use_events(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_4__* @kmalloc_array(i32 %8, i32 4, i32 %9)
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %117

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %50, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %31, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %41, i32* %49, align 4
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 7
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  %66 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sema_init(i32* %71, i32 %75)
  %77 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %78 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %82 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %95, %53
  %85 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %90 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %84

101:                                              ; preds = %84
  %102 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* @MTHCA_CMD_USE_EVENTS, align 4
  %108 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %109 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = call i32 @down(i32* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %101, %19
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_4__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @down(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
