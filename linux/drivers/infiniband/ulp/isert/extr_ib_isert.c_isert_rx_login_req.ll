; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rx_login_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rx_login_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32, i32, %struct.iscsi_conn*, %struct.iser_rx_desc* }
%struct.iscsi_conn = type { i32, %struct.iscsi_login* }
%struct.iscsi_login = type { i32, i32, i64, i32*, i32*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32 }
%struct.iser_rx_desc = type { i8*, i32 }
%struct.iscsi_login_req = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"conn %p\0A\00", align 1
@ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK = common dso_local global i32 0, align 4
@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@MAX_KEY_VALUE_PAIRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Using login payload size: %d, rx_buflen: %d MAX_KEY_VALUE_PAIRS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_conn*)* @isert_rx_login_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_rx_login_req(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca %struct.iser_rx_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_login*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_login_req*, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %9 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 3
  %11 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %10, align 8
  store %struct.iser_rx_desc* %11, %struct.iser_rx_desc** %3, align 8
  %12 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %13 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %16 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %15, i32 0, i32 2
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  store %struct.iscsi_conn* %17, %struct.iscsi_conn** %5, align 8
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 1
  %20 = load %struct.iscsi_login*, %struct.iscsi_login** %19, align 8
  store %struct.iscsi_login* %20, %struct.iscsi_login** %6, align 8
  %21 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %22 = call i32 @isert_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %21)
  %23 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %24 = icmp ne %struct.iscsi_login* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %29 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %99

32:                                               ; preds = %1
  %33 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %3, align 8
  %34 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %35, %struct.iscsi_login_req** %8, align 8
  %36 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %37 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %46 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = ashr i32 %49, 2
  %51 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %54 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %57 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %59 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %62 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 8
  %63 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %63, i32 0, i32 10
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @memcpy(i32* %65, i8* %68, i32 6)
  %70 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %71 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @be32_to_cpu(i32 %72)
  %74 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %75 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %74, i32 0, i32 9
  store i8* %73, i8** %75, align 8
  %76 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %77 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %80 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  %81 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %82 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @be32_to_cpu(i32 %83)
  %85 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %88 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @be16_to_cpu(i32 %89)
  %91 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %92 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %8, align 8
  %94 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @be16_to_cpu(i32 %95)
  %97 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %98 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %32, %1
  %100 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %101 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %3, align 8
  %105 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %104, i32 0, i32 1
  %106 = bitcast i32* %105 to i8*
  %107 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %108 = call i32 @memcpy(i32* %103, i8* %106, i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MAX_KEY_VALUE_PAIRS, align 4
  %111 = call i32 @min(i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @MAX_KEY_VALUE_PAIRS, align 4
  %115 = call i32 @isert_dbg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %117 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %3, align 8
  %120 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @memcpy(i32* %118, i8* %122, i32 %123)
  %125 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %126 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %99
  %130 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %131 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %130, i32 0, i32 1
  %132 = call i32 @complete(i32* %131)
  br label %137

133:                                              ; preds = %99
  %134 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %135 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %134, i32 0, i32 0
  %136 = call i32 @schedule_delayed_work(i32* %135, i32 0)
  br label %137

137:                                              ; preds = %133, %129
  ret void
}

declare dso_local i32 @isert_info(i8*, %struct.isert_conn*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @isert_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
