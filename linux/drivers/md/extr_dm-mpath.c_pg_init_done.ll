; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_pg_init_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_pg_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { %struct.priority_group* }
%struct.priority_group = type { i32, %struct.multipath* }
%struct.multipath = type { i32, i32, i32, i32, i32*, %struct.pgpath*, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Could not failover the device: Handler scsi_dh_%s Error %d.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not failover device. Error %d.\00", align 1
@MPATHF_PG_INIT_REQUIRED = common dso_local global i32 0, align 4
@MPATHF_PG_INIT_DELAY_RETRY = common dso_local global i32 0, align 4
@MPATHF_QUEUE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pg_init_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_init_done(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pgpath*, align 8
  %6 = alloca %struct.priority_group*, align 8
  %7 = alloca %struct.multipath*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.pgpath*
  store %struct.pgpath* %11, %struct.pgpath** %5, align 8
  %12 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %13 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %12, i32 0, i32 0
  %14 = load %struct.priority_group*, %struct.priority_group** %13, align 8
  store %struct.priority_group* %14, %struct.priority_group** %6, align 8
  %15 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %16 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %15, i32 0, i32 1
  %17 = load %struct.multipath*, %struct.multipath** %16, align 8
  store %struct.multipath* %17, %struct.multipath** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %49 [
    i32 130, label %19
    i32 131, label %20
    i32 133, label %34
    i32 128, label %38
    i32 132, label %39
    i32 129, label %39
    i32 134, label %48
  ]

19:                                               ; preds = %2
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.multipath*, %struct.multipath** %7, align 8
  %22 = getelementptr inbounds %struct.multipath, %struct.multipath* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %20
  %27 = load %struct.multipath*, %struct.multipath** %7, align 8
  %28 = getelementptr inbounds %struct.multipath, %struct.multipath* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %33 = call i32 @fail_path(%struct.pgpath* %32)
  br label %52

34:                                               ; preds = %2
  %35 = load %struct.multipath*, %struct.multipath** %7, align 8
  %36 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %37 = call i32 @bypass_pg(%struct.multipath* %35, %struct.priority_group* %36, i32 1)
  br label %52

38:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %2, %2, %38
  %40 = load %struct.multipath*, %struct.multipath** %7, align 8
  %41 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %42 = call i32 @pg_init_limit_reached(%struct.multipath* %40, %struct.pgpath* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %46 = call i32 @fail_path(%struct.pgpath* %45)
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %4, align 4
  br label %52

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %2, %48
  %50 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %51 = call i32 @fail_path(%struct.pgpath* %50)
  br label %52

52:                                               ; preds = %49, %47, %34, %26, %25, %19
  %53 = load %struct.multipath*, %struct.multipath** %7, align 8
  %54 = getelementptr inbounds %struct.multipath, %struct.multipath* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %61 = load %struct.multipath*, %struct.multipath** %7, align 8
  %62 = getelementptr inbounds %struct.multipath, %struct.multipath* %61, i32 0, i32 5
  %63 = load %struct.pgpath*, %struct.pgpath** %62, align 8
  %64 = icmp eq %struct.pgpath* %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.multipath*, %struct.multipath** %7, align 8
  %69 = getelementptr inbounds %struct.multipath, %struct.multipath* %68, i32 0, i32 5
  store %struct.pgpath* null, %struct.pgpath** %69, align 8
  %70 = load %struct.multipath*, %struct.multipath** %7, align 8
  %71 = getelementptr inbounds %struct.multipath, %struct.multipath* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %65, %59
  br label %83

73:                                               ; preds = %52
  %74 = load i32, i32* @MPATHF_PG_INIT_REQUIRED, align 4
  %75 = load %struct.multipath*, %struct.multipath** %7, align 8
  %76 = getelementptr inbounds %struct.multipath, %struct.multipath* %75, i32 0, i32 2
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %81 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %73
  br label %83

83:                                               ; preds = %82, %72
  %84 = load %struct.multipath*, %struct.multipath** %7, align 8
  %85 = getelementptr inbounds %struct.multipath, %struct.multipath* %84, i32 0, i32 3
  %86 = call i64 @atomic_dec_return(i32* %85)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %124

89:                                               ; preds = %83
  %90 = load i32, i32* @MPATHF_PG_INIT_REQUIRED, align 4
  %91 = load %struct.multipath*, %struct.multipath** %7, align 8
  %92 = getelementptr inbounds %struct.multipath, %struct.multipath* %91, i32 0, i32 2
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* @MPATHF_PG_INIT_DELAY_RETRY, align 4
  %100 = load %struct.multipath*, %struct.multipath** %7, align 8
  %101 = getelementptr inbounds %struct.multipath, %struct.multipath* %100, i32 0, i32 2
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  br label %108

103:                                              ; preds = %95
  %104 = load i32, i32* @MPATHF_PG_INIT_DELAY_RETRY, align 4
  %105 = load %struct.multipath*, %struct.multipath** %7, align 8
  %106 = getelementptr inbounds %struct.multipath, %struct.multipath* %105, i32 0, i32 2
  %107 = call i32 @clear_bit(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.multipath*, %struct.multipath** %7, align 8
  %110 = call i64 @__pg_init_all_paths(%struct.multipath* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %124

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %89
  %115 = load i32, i32* @MPATHF_QUEUE_IO, align 4
  %116 = load %struct.multipath*, %struct.multipath** %7, align 8
  %117 = getelementptr inbounds %struct.multipath, %struct.multipath* %116, i32 0, i32 2
  %118 = call i32 @clear_bit(i32 %115, i32* %117)
  %119 = load %struct.multipath*, %struct.multipath** %7, align 8
  %120 = call i32 @process_queued_io_list(%struct.multipath* %119)
  %121 = load %struct.multipath*, %struct.multipath** %7, align 8
  %122 = getelementptr inbounds %struct.multipath, %struct.multipath* %121, i32 0, i32 1
  %123 = call i32 @wake_up(i32* %122)
  br label %124

124:                                              ; preds = %114, %112, %88
  %125 = load %struct.multipath*, %struct.multipath** %7, align 8
  %126 = getelementptr inbounds %struct.multipath, %struct.multipath* %125, i32 0, i32 0
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  ret void
}

declare dso_local i32 @DMERR(i8*, i32, ...) #1

declare dso_local i32 @fail_path(%struct.pgpath*) #1

declare dso_local i32 @bypass_pg(%struct.multipath*, %struct.priority_group*, i32) #1

declare dso_local i32 @pg_init_limit_reached(%struct.multipath*, %struct.pgpath*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @__pg_init_all_paths(%struct.multipath*) #1

declare dso_local i32 @process_queued_io_list(%struct.multipath*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
