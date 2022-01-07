; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_neigh = type { i64, i32, i64, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"neigh free for %06x %pI6\0A\00", align 1
@IPOIB_NEIGH_TBL_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_neigh_dtor(%struct.ipoib_neigh* %0) #0 {
  %2 = alloca %struct.ipoib_neigh*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.ipoib_neigh* %0, %struct.ipoib_neigh** %2, align 8
  %6 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %7 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %4, align 8
  %11 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %12 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %17 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ipoib_put_ah(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  br label %21

21:                                               ; preds = %26, %20
  %22 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %23 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %22, i32 0, i32 1
  %24 = call %struct.sk_buff* @__skb_dequeue(i32* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %5, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %32)
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %36 = call i64 @ipoib_cm_get(%struct.ipoib_neigh* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %40 = call i64 @ipoib_cm_get(%struct.ipoib_neigh* %39)
  %41 = call i32 @ipoib_cm_destroy_tx(i64 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %43)
  %45 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %46 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @IPOIB_QPN(i64 %47)
  %49 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %50 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 4
  %53 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %52)
  %54 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %2, align 8
  %55 = call i32 @kfree(%struct.ipoib_neigh* %54)
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i64 @atomic_dec_and_test(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %42
  %62 = load i32, i32* @IPOIB_NEIGH_TBL_FLUSH, align 4
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %64 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %63, i32 0, i32 1
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @complete(i32* %70)
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %42
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_put_ah(i64) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @ipoib_cm_get(%struct.ipoib_neigh*) #1

declare dso_local i32 @ipoib_cm_destroy_tx(i64) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, i64) #1

declare dso_local i32 @IPOIB_QPN(i64) #1

declare dso_local i32 @kfree(%struct.ipoib_neigh*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
