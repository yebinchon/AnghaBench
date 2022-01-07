; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_handle_text_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_handle_text_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.isert_cmd = type { i32 }
%struct.iscsi_cmd = type { i8* }
%struct.iser_rx_desc = type { i32* }
%struct.iscsi_text = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.isert_cmd*, %struct.iscsi_cmd*, %struct.iser_rx_desc*, %struct.iscsi_text*)* @isert_handle_text_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_handle_text_cmd(%struct.isert_conn* %0, %struct.isert_cmd* %1, %struct.iscsi_cmd* %2, %struct.iser_rx_desc* %3, %struct.iscsi_text* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca %struct.isert_cmd*, align 8
  %9 = alloca %struct.iscsi_cmd*, align 8
  %10 = alloca %struct.iser_rx_desc*, align 8
  %11 = alloca %struct.iscsi_text*, align 8
  %12 = alloca %struct.iscsi_conn*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %7, align 8
  store %struct.isert_cmd* %1, %struct.isert_cmd** %8, align 8
  store %struct.iscsi_cmd* %2, %struct.iscsi_cmd** %9, align 8
  store %struct.iser_rx_desc* %3, %struct.iser_rx_desc** %10, align 8
  store %struct.iscsi_text* %4, %struct.iscsi_text** %11, align 8
  %16 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %17 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %12, align 8
  %19 = load %struct.iscsi_text*, %struct.iscsi_text** %11, align 8
  %20 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntoh24(i32 %21)
  store i64 %22, i64* %13, align 8
  store i8* null, i8** %15, align 8
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %25 = load %struct.iscsi_text*, %struct.iscsi_text** %11, align 8
  %26 = call i32 @iscsit_setup_text_cmd(%struct.iscsi_conn* %23, %struct.iscsi_cmd* %24, %struct.iscsi_text* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %6, align 4
  br label %61

31:                                               ; preds = %5
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i64 %35, i32 %36)
  store i8* %37, i8** %15, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %61

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i8*, i8** %15, align 8
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %49 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %10, align 8
  %52 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @memcpy(i8* %50, i32* %54, i64 %55)
  %57 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %59 = load %struct.iscsi_text*, %struct.iscsi_text** %11, align 8
  %60 = call i32 @iscsit_process_text_cmd(%struct.iscsi_conn* %57, %struct.iscsi_cmd* %58, %struct.iscsi_text* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %44, %40, %29
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i32 @iscsit_setup_text_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_text*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @iscsit_process_text_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_text*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
