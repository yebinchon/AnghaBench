; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_neigh = type { i32*, i32, i8*, i32, i32 }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, %struct.ipoib_neigh_table }
%struct.ipoib_neigh_table = type { i32, i32 }
%struct.ipoib_neigh_hash = type { i32*, i32, i8*, i32, i32 }

@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipoib_neigh* @ipoib_neigh_alloc(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ipoib_neigh_table*, align 8
  %7 = alloca %struct.ipoib_neigh_hash*, align 8
  %8 = alloca %struct.ipoib_neigh*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %10)
  store %struct.ipoib_dev_priv* %11, %struct.ipoib_dev_priv** %5, align 8
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 1
  store %struct.ipoib_neigh_table* %13, %struct.ipoib_neigh_table** %6, align 8
  %14 = load %struct.ipoib_neigh_table*, %struct.ipoib_neigh_table** %6, align 8
  %15 = getelementptr inbounds %struct.ipoib_neigh_table, %struct.ipoib_neigh_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 0
  %19 = call i32 @lockdep_is_held(i32* %18)
  %20 = call %struct.ipoib_neigh_hash* @rcu_dereference_protected(i32 %16, i32 %19)
  store %struct.ipoib_neigh_hash* %20, %struct.ipoib_neigh_hash** %7, align 8
  %21 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %22 = icmp ne %struct.ipoib_neigh_hash* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %8, align 8
  br label %111

24:                                               ; preds = %2
  %25 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @ipoib_addr_hash(%struct.ipoib_neigh_hash* %25, i32* %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %29 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 0
  %36 = call i32 @lockdep_is_held(i32* %35)
  %37 = call %struct.ipoib_neigh_hash* @rcu_dereference_protected(i32 %33, i32 %36)
  %38 = bitcast %struct.ipoib_neigh_hash* %37 to %struct.ipoib_neigh*
  store %struct.ipoib_neigh* %38, %struct.ipoib_neigh** %8, align 8
  br label %39

39:                                               ; preds = %61, %24
  %40 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %41 = icmp ne %struct.ipoib_neigh* %40, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %45 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INFINIBAND_ALEN, align 4
  %48 = call i64 @memcmp(i32* %43, i32 %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %52 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %51, i32 0, i32 3
  %53 = call i32 @atomic_inc_not_zero(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %8, align 8
  br label %70

56:                                               ; preds = %50
  %57 = load i8*, i8** @jiffies, align 8
  %58 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %59 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %111

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %63 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 0
  %67 = call i32 @lockdep_is_held(i32* %66)
  %68 = call %struct.ipoib_neigh_hash* @rcu_dereference_protected(i32 %64, i32 %67)
  %69 = bitcast %struct.ipoib_neigh_hash* %68 to %struct.ipoib_neigh*
  store %struct.ipoib_neigh* %69, %struct.ipoib_neigh** %8, align 8
  br label %39

70:                                               ; preds = %55, %39
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call %struct.ipoib_neigh_hash* @ipoib_neigh_ctor(i32* %71, %struct.net_device* %72)
  %74 = bitcast %struct.ipoib_neigh_hash* %73 to %struct.ipoib_neigh*
  store %struct.ipoib_neigh* %74, %struct.ipoib_neigh** %8, align 8
  %75 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %76 = icmp ne %struct.ipoib_neigh* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %111

78:                                               ; preds = %70
  %79 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %80 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %79, i32 0, i32 3
  %81 = call i32 @atomic_inc(i32* %80)
  %82 = load i8*, i8** @jiffies, align 8
  %83 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %84 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %86 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %89 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %95 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %94, i32 0, i32 0
  %96 = call i32 @lockdep_is_held(i32* %95)
  %97 = call %struct.ipoib_neigh_hash* @rcu_dereference_protected(i32 %93, i32 %96)
  %98 = call i32 @rcu_assign_pointer(i32 %87, %struct.ipoib_neigh_hash* %97)
  %99 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %7, align 8
  %100 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  %106 = bitcast %struct.ipoib_neigh* %105 to %struct.ipoib_neigh_hash*
  %107 = call i32 @rcu_assign_pointer(i32 %104, %struct.ipoib_neigh_hash* %106)
  %108 = load %struct.ipoib_neigh_table*, %struct.ipoib_neigh_table** %6, align 8
  %109 = getelementptr inbounds %struct.ipoib_neigh_table, %struct.ipoib_neigh_table* %108, i32 0, i32 0
  %110 = call i32 @atomic_inc(i32* %109)
  br label %111

111:                                              ; preds = %78, %77, %56, %23
  %112 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %8, align 8
  ret %struct.ipoib_neigh* %112
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local %struct.ipoib_neigh_hash* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @ipoib_addr_hash(%struct.ipoib_neigh_hash*, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local %struct.ipoib_neigh_hash* @ipoib_neigh_ctor(i32*, %struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ipoib_neigh_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
