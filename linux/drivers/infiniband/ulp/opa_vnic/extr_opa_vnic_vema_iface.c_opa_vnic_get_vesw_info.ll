; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_vesw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_vesw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__opa_vesw_info }
%struct.__opa_vesw_info = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opa_vesw_info = type { i32, i8*, i32, i8*, i8**, i8*, i32, i8*, i32, i8*, i32, i8*, i8* }

@OPA_VESW_MAX_NUM_DEF_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_get_vesw_info(%struct.opa_vnic_adapter* %0, %struct.opa_vesw_info* %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca %struct.opa_vesw_info*, align 8
  %5 = alloca %struct.__opa_vesw_info*, align 8
  %6 = alloca i32, align 4
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store %struct.opa_vesw_info* %1, %struct.opa_vesw_info** %4, align 8
  %7 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.__opa_vesw_info* %9, %struct.__opa_vesw_info** %5, align 8
  %10 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %11 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @cpu_to_be16(i32 %12)
  %14 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %15 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %14, i32 0, i32 12
  store i8* %13, i8** %15, align 8
  %16 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %17 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @cpu_to_be16(i32 %18)
  %20 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %21 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %20, i32 0, i32 11
  store i8* %19, i8** %21, align 8
  %22 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %23 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %26 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %29 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @memcpy(i32 %24, i32 %27, i32 %31)
  %33 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %34 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @cpu_to_be16(i32 %35)
  %37 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %38 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %40 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %43 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %46 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @memcpy(i32 %41, i32 %44, i32 %48)
  %50 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %51 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @cpu_to_be16(i32 %52)
  %54 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %55 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %57 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %60 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %63 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @memcpy(i32 %58, i32 %61, i32 %65)
  %67 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %68 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %72 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %92, %2
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @OPA_VESW_MAX_NUM_DEF_PORT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %79 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %87 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %86, i32 0, i32 4
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %73

95:                                               ; preds = %73
  %96 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %97 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %101 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %103 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %106 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %109 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ARRAY_SIZE(i32 %110)
  %112 = call i32 @memcpy(i32 %104, i32 %107, i32 %111)
  %113 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %114 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @cpu_to_be16(i32 %115)
  %117 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %118 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.opa_vesw_info*, %struct.opa_vesw_info** %4, align 8
  %120 = getelementptr inbounds %struct.opa_vesw_info, %struct.opa_vesw_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %123 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.__opa_vesw_info*, %struct.__opa_vesw_info** %5, align 8
  %126 = getelementptr inbounds %struct.__opa_vesw_info, %struct.__opa_vesw_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ARRAY_SIZE(i32 %127)
  %129 = call i32 @memcpy(i32 %121, i32 %124, i32 %128)
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
