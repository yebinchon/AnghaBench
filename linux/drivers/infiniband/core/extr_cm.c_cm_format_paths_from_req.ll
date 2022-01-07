; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_paths_from_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_format_paths_from_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_req_msg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sa_path_rec = type { i32, i64, %struct.TYPE_2__, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IB_SA_EQ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_req_msg*, %struct.sa_path_rec*, %struct.sa_path_rec*)* @cm_format_paths_from_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_paths_from_req(%struct.cm_req_msg* %0, %struct.sa_path_rec* %1, %struct.sa_path_rec* %2) #0 {
  %4 = alloca %struct.cm_req_msg*, align 8
  %5 = alloca %struct.sa_path_rec*, align 8
  %6 = alloca %struct.sa_path_rec*, align 8
  store %struct.cm_req_msg* %0, %struct.cm_req_msg** %4, align 8
  store %struct.sa_path_rec* %1, %struct.sa_path_rec** %5, align 8
  store %struct.sa_path_rec* %2, %struct.sa_path_rec** %6, align 8
  %7 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %8 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %11 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %10, i32 0, i32 15
  store i32 %9, i32* %11, align 8
  %12 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %13 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %16 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %15, i32 0, i32 14
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %18 = call i32 @cm_req_get_primary_flow_label(%struct.cm_req_msg* %17)
  %19 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %20 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 8
  %21 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %22 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %25 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %27 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %30 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %32 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %34 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %37 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %39 = call i32 @cm_req_get_primary_sl(%struct.cm_req_msg* %38)
  %40 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %41 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @IB_SA_EQ, align 8
  %43 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %44 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %43, i32 0, i32 8
  store i8* %42, i8** %44, align 8
  %45 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %46 = call i8* @cm_req_get_path_mtu(%struct.cm_req_msg* %45)
  %47 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %48 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @IB_SA_EQ, align 8
  %50 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %51 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %53 = call i32 @cm_req_get_primary_packet_rate(%struct.cm_req_msg* %52)
  %54 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %55 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @IB_SA_EQ, align 8
  %57 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %58 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %60 = call i64 @cm_req_get_primary_local_ack_timeout(%struct.cm_req_msg* %59)
  %61 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %62 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %64 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %70 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %74 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %77 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %79 = call i64 @sa_path_is_roce(%struct.sa_path_rec* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %3
  %82 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %83 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %3
  %86 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %87 = call i64 @cm_req_has_alt_path(%struct.cm_req_msg* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %169

89:                                               ; preds = %85
  %90 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %91 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %94 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %93, i32 0, i32 15
  store i32 %92, i32* %94, align 8
  %95 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %96 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %99 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %98, i32 0, i32 14
  store i32 %97, i32* %99, align 4
  %100 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %101 = call i32 @cm_req_get_alt_flow_label(%struct.cm_req_msg* %100)
  %102 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %103 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %102, i32 0, i32 13
  store i32 %101, i32* %103, align 8
  %104 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %105 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %108 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %107, i32 0, i32 12
  store i32 %106, i32* %108, align 4
  %109 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %110 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %113 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %112, i32 0, i32 11
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %115 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %117 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %120 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %122 = call i32 @cm_req_get_alt_sl(%struct.cm_req_msg* %121)
  %123 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %124 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** @IB_SA_EQ, align 8
  %126 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %127 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %129 = call i8* @cm_req_get_path_mtu(%struct.cm_req_msg* %128)
  %130 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %131 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @IB_SA_EQ, align 8
  %133 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %134 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %133, i32 0, i32 6
  store i8* %132, i8** %134, align 8
  %135 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %136 = call i32 @cm_req_get_alt_packet_rate(%struct.cm_req_msg* %135)
  %137 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %138 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load i8*, i8** @IB_SA_EQ, align 8
  %140 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %141 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %140, i32 0, i32 4
  store i8* %139, i8** %141, align 8
  %142 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %143 = call i64 @cm_req_get_alt_local_ack_timeout(%struct.cm_req_msg* %142)
  %144 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %145 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %147 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %153 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %154, %151
  store i64 %155, i64* %153, align 8
  %156 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %157 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %160 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %162 = call i64 @sa_path_is_roce(%struct.sa_path_rec* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %89
  %165 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %166 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %164, %89
  br label %169

169:                                              ; preds = %168, %85
  %170 = load %struct.cm_req_msg*, %struct.cm_req_msg** %4, align 8
  %171 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %172 = load %struct.sa_path_rec*, %struct.sa_path_rec** %6, align 8
  %173 = call i32 @cm_format_path_lid_from_req(%struct.cm_req_msg* %170, %struct.sa_path_rec* %171, %struct.sa_path_rec* %172)
  ret void
}

declare dso_local i32 @cm_req_get_primary_flow_label(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_primary_sl(%struct.cm_req_msg*) #1

declare dso_local i8* @cm_req_get_path_mtu(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_primary_packet_rate(%struct.cm_req_msg*) #1

declare dso_local i64 @cm_req_get_primary_local_ack_timeout(%struct.cm_req_msg*) #1

declare dso_local i64 @sa_path_is_roce(%struct.sa_path_rec*) #1

declare dso_local i64 @cm_req_has_alt_path(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_alt_flow_label(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_alt_sl(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_alt_packet_rate(%struct.cm_req_msg*) #1

declare dso_local i64 @cm_req_get_alt_local_ack_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_format_path_lid_from_req(%struct.cm_req_msg*, %struct.sa_path_rec*, %struct.sa_path_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
