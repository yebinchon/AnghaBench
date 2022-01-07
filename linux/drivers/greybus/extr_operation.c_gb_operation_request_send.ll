; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_request_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_request_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64, i64, %struct.gb_connection* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.gb_operation_msg_hdr* }
%struct.gb_operation_msg_hdr = type { i32 }
%struct.gb_connection = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_operation_request_send(%struct.gb_operation* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_operation*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gb_connection*, align 8
  %11 = alloca %struct.gb_operation_msg_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %15 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %14, i32 0, i32 4
  %16 = load %struct.gb_connection*, %struct.gb_connection** %15, align 8
  store %struct.gb_connection* %16, %struct.gb_connection** %10, align 8
  %17 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  %18 = call i64 @gb_connection_is_offloaded(%struct.gb_connection* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %105

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %105

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %32 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %34 = call i64 @gb_operation_is_unidirectional(%struct.gb_operation* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %38 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %51

39:                                               ; preds = %29
  %40 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  %41 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %40, i32 0, i32 0
  %42 = call i64 @atomic_inc_return(i32* %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @U16_MAX, align 4
  %46 = urem i32 %44, %45
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %50 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %39, %36
  %52 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %53 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %55, align 8
  store %struct.gb_operation_msg_hdr* %56, %struct.gb_operation_msg_hdr** %11, align 8
  %57 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %58 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @cpu_to_le16(i64 %59)
  %61 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %11, align 8
  %62 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %64 = load i32, i32* @EINPROGRESS, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i32 @gb_operation_result_set(%struct.gb_operation* %63, i32 %65)
  %67 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %68 = call i32 @gb_operation_get(%struct.gb_operation* %67)
  %69 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %70 = call i32 @gb_operation_get_active(%struct.gb_operation* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %51
  br label %101

74:                                               ; preds = %51
  %75 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %76 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @gb_message_send(%struct.TYPE_3__* %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %98

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @msecs_to_jiffies(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %92 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %95 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %94, i32 0, i32 0
  %96 = call i32 @add_timer(%struct.TYPE_4__* %95)
  br label %97

97:                                               ; preds = %86, %83
  store i32 0, i32* %5, align 4
  br label %105

98:                                               ; preds = %82
  %99 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %100 = call i32 @gb_operation_put_active(%struct.gb_operation* %99)
  br label %101

101:                                              ; preds = %98, %73
  %102 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  %103 = call i32 @gb_operation_put(%struct.gb_operation* %102)
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %97, %26, %20
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @gb_connection_is_offloaded(%struct.gb_connection*) #1

declare dso_local i64 @gb_operation_is_unidirectional(%struct.gb_operation*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @gb_operation_result_set(%struct.gb_operation*, i32) #1

declare dso_local i32 @gb_operation_get(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_get_active(%struct.gb_operation*) #1

declare dso_local i32 @gb_message_send(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @gb_operation_put_active(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
