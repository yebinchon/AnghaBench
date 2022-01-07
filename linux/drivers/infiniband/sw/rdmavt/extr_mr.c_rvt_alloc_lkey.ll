; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_alloc_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_alloc_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_mregion = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_dev_info = type { %struct.TYPE_4__, i32, %struct.rvt_lkey_table }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_lkey_table = type { i64, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_mregion*, i32)* @rvt_alloc_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_alloc_lkey(%struct.rvt_mregion* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_mregion*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rvt_dev_info*, align 8
  %10 = alloca %struct.rvt_lkey_table*, align 8
  %11 = alloca %struct.rvt_mregion*, align 8
  store %struct.rvt_mregion* %0, %struct.rvt_mregion** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %13 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %16)
  store %struct.rvt_dev_info* %17, %struct.rvt_dev_info** %9, align 8
  %18 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %19 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %18, i32 0, i32 2
  store %struct.rvt_lkey_table* %19, %struct.rvt_lkey_table** %10, align 8
  %20 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %21 = call i32 @rvt_get_mr(%struct.rvt_mregion* %20)
  %22 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %23 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %22, i32 0, i32 3
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %2
  %29 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %30 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.rvt_mregion* @rcu_access_pointer(i32 %31)
  store %struct.rvt_mregion* %32, %struct.rvt_mregion** %11, align 8
  %33 = load %struct.rvt_mregion*, %struct.rvt_mregion** %11, align 8
  %34 = icmp ne %struct.rvt_mregion* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %28
  %36 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %37 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %39 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %42 = call i32 @rcu_assign_pointer(i32 %40, %struct.rvt_mregion* %41)
  %43 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %44 = call i32 @rvt_get_mr(%struct.rvt_mregion* %43)
  br label %45

45:                                               ; preds = %35, %28
  br label %138

46:                                               ; preds = %2
  %47 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %48 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %74, %46
  %52 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %53 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.rvt_mregion* @rcu_access_pointer(i32 %57)
  %59 = icmp ne %struct.rvt_mregion* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %75

61:                                               ; preds = %51
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  %64 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %65 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = and i64 %63, %68
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %145

74:                                               ; preds = %61
  br label %51

75:                                               ; preds = %60
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  %78 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %79 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = and i64 %77, %82
  %84 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %85 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %87 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %92 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 32, %94
  %96 = zext i32 %95 to i64
  %97 = shl i64 %90, %96
  %98 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %9, align 8
  %99 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 24, %101
  %103 = shl i32 1, %102
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %106 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %104, %107
  %109 = shl i32 %108, 8
  %110 = sext i32 %109 to i64
  %111 = or i64 %97, %110
  %112 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %113 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %115 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %75
  %119 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %120 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, 256
  store i64 %122, i64* %120, align 8
  %123 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %124 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %118, %75
  %128 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %129 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %131 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %137 = call i32 @rcu_assign_pointer(i32 %135, %struct.rvt_mregion* %136)
  br label %138

138:                                              ; preds = %127, %45
  %139 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %140 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %139, i32 0, i32 3
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  br label %143

143:                                              ; preds = %145, %138
  %144 = load i32, i32* %8, align 4
  ret i32 %144

145:                                              ; preds = %73
  %146 = load %struct.rvt_mregion*, %struct.rvt_mregion** %3, align 8
  %147 = call i32 @rvt_put_mr(%struct.rvt_mregion* %146)
  %148 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %149 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %148, i32 0, i32 3
  %150 = load i64, i64* %5, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  br label %143
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rvt_get_mr(%struct.rvt_mregion*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rvt_mregion* @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rvt_mregion*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rvt_put_mr(%struct.rvt_mregion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
