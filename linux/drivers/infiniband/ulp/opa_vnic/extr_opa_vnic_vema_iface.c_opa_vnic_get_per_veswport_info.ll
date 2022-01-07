; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_per_veswport_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_vema_iface.c_opa_vnic_get_per_veswport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.__opa_per_veswport_info }
%struct.__opa_per_veswport_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opa_per_veswport_info = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_get_per_veswport_info(%struct.opa_vnic_adapter* %0, %struct.opa_per_veswport_info* %1) #0 {
  %3 = alloca %struct.opa_vnic_adapter*, align 8
  %4 = alloca %struct.opa_per_veswport_info*, align 8
  %5 = alloca %struct.__opa_per_veswport_info*, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %3, align 8
  store %struct.opa_per_veswport_info* %1, %struct.opa_per_veswport_info** %4, align 8
  %6 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.__opa_per_veswport_info* %8, %struct.__opa_per_veswport_info** %5, align 8
  %9 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %10 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %9, i32 0, i32 22
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %14 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %13, i32 0, i32 22
  store i8* %12, i8** %14, align 8
  %15 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %16 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %15, i32 0, i32 21
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %19 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %18, i32 0, i32 21
  store i32 %17, i32* %19, align 8
  %20 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %21 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %20, i32 0, i32 20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %24 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %23, i32 0, i32 20
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %27 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %26, i32 0, i32 20
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @memcpy(i32 %22, i32 %25, i32 %29)
  %31 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %32 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %31, i32 0, i32 19
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %35 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %34, i32 0, i32 19
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %38 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %37, i32 0, i32 19
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @memcpy(i32 %33, i32 %36, i32 %40)
  %42 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %43 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %42, i32 0, i32 18
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %46 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %45, i32 0, i32 18
  store i32 %44, i32* %46, align 4
  %47 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %48 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %47, i32 0, i32 17
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %51 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %50, i32 0, i32 17
  store i32 %49, i32* %51, align 8
  %52 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %53 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %52, i32 0, i32 16
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_be16(i32 %54)
  %56 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %57 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %56, i32 0, i32 16
  store i8* %55, i8** %57, align 8
  %58 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %59 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %58, i32 0, i32 15
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be16(i32 %60)
  %62 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %63 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %62, i32 0, i32 15
  store i8* %61, i8** %63, align 8
  %64 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %65 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %69 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %68, i32 0, i32 14
  store i8* %67, i8** %69, align 8
  %70 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %71 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %70, i32 0, i32 13
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %74 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %77 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = call i32 @memcpy(i32 %72, i32 %75, i32 %79)
  %81 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %82 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %86 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %85, i32 0, i32 12
  store i8* %84, i8** %86, align 8
  %87 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %88 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %91 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %94 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = call i32 @memcpy(i32 %89, i32 %92, i32 %96)
  %98 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %99 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %102 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %105 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @memcpy(i32 %100, i32 %103, i32 %107)
  %109 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %110 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %113 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %116 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ARRAY_SIZE(i32 %117)
  %119 = call i32 @memcpy(i32 %111, i32 %114, i32 %118)
  %120 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %121 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %124 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %127 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ARRAY_SIZE(i32 %128)
  %130 = call i32 @memcpy(i32 %122, i32 %125, i32 %129)
  %131 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %132 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %135 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  %136 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %137 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %140 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %142 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %145 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %147 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %150 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %152 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %155 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %158 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ARRAY_SIZE(i32 %159)
  %161 = call i32 @memcpy(i32 %153, i32 %156, i32 %160)
  %162 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %163 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @cpu_to_be16(i32 %164)
  %166 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %167 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %166, i32 0, i32 2
  store i8* %165, i8** %167, align 8
  %168 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %169 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @cpu_to_be16(i32 %170)
  %172 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %173 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load %struct.opa_per_veswport_info*, %struct.opa_per_veswport_info** %4, align 8
  %175 = getelementptr inbounds %struct.opa_per_veswport_info, %struct.opa_per_veswport_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %178 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.__opa_per_veswport_info*, %struct.__opa_per_veswport_info** %5, align 8
  %181 = getelementptr inbounds %struct.__opa_per_veswport_info, %struct.__opa_per_veswport_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ARRAY_SIZE(i32 %182)
  %184 = call i32 @memcpy(i32 %176, i32 %179, i32 %183)
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
