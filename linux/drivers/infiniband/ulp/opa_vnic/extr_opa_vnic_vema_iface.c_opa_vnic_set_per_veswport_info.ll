; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_set_per_veswport_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_set_per_veswport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__opa_per_veswport_info }
%struct.__opa_per_veswport_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8* }
%struct.opa_per_veswport_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_set_per_veswport_info(%struct.opa_vnic_adapter* %0, %struct.opa_per_veswport_info* %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca %struct.opa_per_veswport_info*, align 8
  %5 = alloca %struct.__opa_per_veswport_info*, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store %struct.opa_per_veswport_info* %1, %struct.opa_per_veswport_info** %4, align 8
  %6 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.__opa_per_veswport_info* %8, %struct.__opa_per_veswport_info** %5, align 8
  %9 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %10 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @be32_to_cpu(i32 %11)
  %13 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %14 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %13, i32 0, i32 15
  store i8* %12, i8** %14, align 8
  %15 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %16 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %15, i32 0, i32 14
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %19 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %22 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %21, i32 0, i32 14
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @memcpy(i32 %17, i32 %20, i32 %24)
  %26 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %27 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %30 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %33 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @memcpy(i32 %28, i32 %31, i32 %35)
  %37 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %38 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %41 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %43 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %46 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %49 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = call i32 @memcpy(i32 %44, i32 %47, i32 %51)
  %53 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %54 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @be32_to_cpu(i32 %55)
  %57 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %58 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %57, i32 0, i32 10
  store i8* %56, i8** %58, align 8
  %59 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %60 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %63 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %66 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @memcpy(i32 %61, i32 %64, i32 %68)
  %70 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %71 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %74 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %77 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = call i32 @memcpy(i32 %72, i32 %75, i32 %79)
  %81 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %82 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %85 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %88 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ARRAY_SIZE(i32 %89)
  %91 = call i32 @memcpy(i32 %83, i32 %86, i32 %90)
  %92 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %93 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %96 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %99 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ARRAY_SIZE(i32 %100)
  %102 = call i32 @memcpy(i32 %94, i32 %97, i32 %101)
  %103 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %104 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %107 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %109 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %112 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %114 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %117 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %119 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %122 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %124 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %127 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %130 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ARRAY_SIZE(i32 %131)
  %133 = call i32 @memcpy(i32 %125, i32 %128, i32 %132)
  %134 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %135 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %138 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %141 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ARRAY_SIZE(i32 %142)
  %144 = call i32 @memcpy(i32 %136, i32 %139, i32 %143)
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
