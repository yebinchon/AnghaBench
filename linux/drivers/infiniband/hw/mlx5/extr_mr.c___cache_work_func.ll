; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c___cache_work_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c___cache_work_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cache_ent = type { i32, i32, i32, i32, i32, %struct.mlx5_ib_dev* }
%struct.mlx5_ib_dev = type { i32, %struct.mlx5_mr_cache }
%struct.mlx5_mr_cache = type { i32, i64, %struct.mlx5_cache_ent*, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"returned eagain, order %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"command failed order %d, err %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_cache_ent*)* @__cache_work_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cache_work_func(%struct.mlx5_cache_ent* %0) #0 {
  %2 = alloca %struct.mlx5_cache_ent*, align 8
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_mr_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_cache_ent* %0, %struct.mlx5_cache_ent** %2, align 8
  %7 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %7, i32 0, i32 5
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  store %struct.mlx5_ib_dev* %9, %struct.mlx5_ib_dev** %3, align 8
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 1
  store %struct.mlx5_mr_cache* %11, %struct.mlx5_mr_cache** %4, align 8
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %13 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @order2idx(%struct.mlx5_ib_dev* %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %155

22:                                               ; preds = %1
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %24, i32 0, i32 2
  %26 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %26, i64 %28
  store %struct.mlx5_cache_ent* %29, %struct.mlx5_cache_ent** %2, align 8
  %30 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %34 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 2, %35
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %22
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %98, label %43

43:                                               ; preds = %38
  %44 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @add_keys(%struct.mlx5_ib_dev* %44, i32 %45, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %48 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 2, %52
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %97

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 2
  %64 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %69 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %68, i32 0, i32 2
  %70 = call i32 @msecs_to_jiffies(i32 3)
  %71 = call i32 @queue_delayed_work(i32 %67, i32* %69, i32 %70)
  br label %96

72:                                               ; preds = %55
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 2
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %85 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %84, i32 0, i32 2
  %86 = call i32 @msecs_to_jiffies(i32 1000)
  %87 = call i32 @queue_delayed_work(i32 %83, i32* %85, i32 %86)
  br label %95

88:                                               ; preds = %72
  %89 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %93 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %92, i32 0, i32 3
  %94 = call i32 @queue_work(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %88, %75
  br label %96

96:                                               ; preds = %95, %60
  br label %97

97:                                               ; preds = %96, %43
  br label %155

98:                                               ; preds = %38, %22
  %99 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %100 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %103 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 2, %104
  %106 = icmp sgt i32 %101, %105
  br i1 %106, label %107, label %154

107:                                              ; preds = %98
  %108 = call i32 (...) @need_resched()
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %144, label %110

110:                                              ; preds = %107
  %111 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %112 = call i32 @someone_adding(%struct.mlx5_mr_cache* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %144, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @jiffies, align 4
  %116 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %117 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @HZ, align 4
  %120 = mul nsw i32 300, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %118, %121
  %123 = call i64 @time_after(i32 %115, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %114
  %126 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @remove_keys(%struct.mlx5_ib_dev* %126, i32 %127, i32 1)
  %129 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %130 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %133 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %125
  %137 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %138 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %141 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %140, i32 0, i32 3
  %142 = call i32 @queue_work(i32 %139, i32* %141)
  br label %143

143:                                              ; preds = %136, %125
  br label %153

144:                                              ; preds = %114, %110, %107
  %145 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %4, align 8
  %146 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %2, align 8
  %149 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %148, i32 0, i32 2
  %150 = load i32, i32* @HZ, align 4
  %151 = mul nsw i32 300, %150
  %152 = call i32 @queue_delayed_work(i32 %147, i32* %149, i32 %151)
  br label %153

153:                                              ; preds = %144, %143
  br label %154

154:                                              ; preds = %153, %98
  br label %155

155:                                              ; preds = %21, %154, %97
  ret void
}

declare dso_local i32 @order2idx(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @add_keys(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @someone_adding(%struct.mlx5_mr_cache*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @remove_keys(%struct.mlx5_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
