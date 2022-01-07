; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_is_vendor_method_in_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_is_vendor_method_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_mgmt_vendor_class = type { %struct.ib_mad_mgmt_method_table**, i32* }
%struct.ib_mad_mgmt_method_table = type { i32 }
%struct.ib_mad_reg_req = type { i32 }

@MAX_MGMT_OUI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_reg_req*)* @is_vendor_method_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_vendor_method_in_use(%struct.ib_mad_mgmt_vendor_class* %0, %struct.ib_mad_reg_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mad_mgmt_vendor_class*, align 8
  %5 = alloca %struct.ib_mad_reg_req*, align 8
  %6 = alloca %struct.ib_mad_mgmt_method_table*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_mgmt_vendor_class* %0, %struct.ib_mad_mgmt_vendor_class** %4, align 8
  store %struct.ib_mad_reg_req* %1, %struct.ib_mad_reg_req** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MAX_MGMT_OUI, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %4, align 8
  %14 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class, %struct.ib_mad_mgmt_vendor_class* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %5, align 8
  %21 = getelementptr inbounds %struct.ib_mad_reg_req, %struct.ib_mad_reg_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcmp(i32 %19, i32 %22, i32 3)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %12
  %26 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %4, align 8
  %27 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class, %struct.ib_mad_mgmt_vendor_class* %26, i32 0, i32 0
  %28 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %28, i64 %30
  %32 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %31, align 8
  store %struct.ib_mad_mgmt_method_table* %32, %struct.ib_mad_mgmt_method_table** %6, align 8
  %33 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %6, align 8
  %34 = icmp ne %struct.ib_mad_mgmt_method_table* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.ib_mad_reg_req*, %struct.ib_mad_reg_req** %5, align 8
  %37 = call i64 @method_in_use(%struct.ib_mad_mgmt_method_table** %6, %struct.ib_mad_reg_req* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %47

40:                                               ; preds = %35
  br label %46

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %12
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %8

46:                                               ; preds = %40, %8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i64 @method_in_use(%struct.ib_mad_mgmt_method_table**, %struct.ib_mad_reg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
