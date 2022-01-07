; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_write_journal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_write_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, i64 }
%struct.journal_completion = type { i32, i8*, %struct.dm_integrity_c* }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32)* @write_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_journal(%struct.dm_integrity_c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.journal_completion, align 8
  %8 = alloca %struct.journal_completion, align 8
  %9 = alloca %struct.journal_completion, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %13 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %7, i32 0, i32 2
  store %struct.dm_integrity_c* %12, %struct.dm_integrity_c** %13, align 8
  %14 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %7, i32 0, i32 0
  %15 = call i32 @init_completion(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %16, %17
  %19 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %20 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ule i32 %18, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %3
  %24 = call i64 @ATOMIC_INIT(i32 1)
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %7, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %28 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %33 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 2
  store %struct.dm_integrity_c* %32, %struct.dm_integrity_c** %33, align 8
  %34 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 0
  %35 = call i32 @init_completion(i32* %34)
  %36 = call i64 @ATOMIC_INIT(i32 0)
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @encrypt_journal(%struct.dm_integrity_c* %39, i32 1, i32 %40, i32 %41, %struct.journal_completion* %8)
  %43 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 0
  %44 = call i32 @wait_for_completion_io(i32* %43)
  br label %60

45:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %52, %53
  %55 = call i32 @rw_section_mac(%struct.dm_integrity_c* %51, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %46

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %62 = load i32, i32* @REQ_OP_WRITE, align 4
  %63 = load i32, i32* @REQ_FUA, align 4
  %64 = load i32, i32* @REQ_SYNC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @rw_journal(%struct.dm_integrity_c* %61, i32 %62, i32 %65, i32 %66, i32 %67, %struct.journal_completion* %7)
  br label %183

69:                                               ; preds = %3
  %70 = call i64 @ATOMIC_INIT(i32 2)
  %71 = inttoptr i64 %70 to i8*
  %72 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %7, i32 0, i32 1
  store i8* %71, i8** %72, align 8
  %73 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %74 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %79 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %140

82:                                               ; preds = %69
  %83 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %84 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 2
  store %struct.dm_integrity_c* %83, %struct.dm_integrity_c** %84, align 8
  %85 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 0
  %86 = call i32 @init_completion(i32* %85)
  %87 = call i64 @ATOMIC_INIT(i32 0)
  %88 = inttoptr i64 %87 to i8*
  %89 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @encrypt_journal(%struct.dm_integrity_c* %90, i32 1, i32 %91, i32 %92, %struct.journal_completion* %8)
  %94 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 0
  %95 = call i64 @try_wait_for_completion(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %82
  %98 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %99 = load i32, i32* @REQ_OP_WRITE, align 4
  %100 = load i32, i32* @REQ_FUA, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @rw_journal(%struct.dm_integrity_c* %98, i32 %99, i32 %100, i32 %101, i32 %102, %struct.journal_completion* %7)
  %104 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 0
  %105 = call i32 @reinit_completion(i32* %104)
  %106 = call i64 @ATOMIC_INIT(i32 0)
  %107 = inttoptr i64 %106 to i8*
  %108 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub i32 %110, %111
  %113 = call i32 @encrypt_journal(%struct.dm_integrity_c* %109, i32 1, i32 0, i32 %112, %struct.journal_completion* %8)
  %114 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 0
  %115 = call i32 @wait_for_completion_io(i32* %114)
  br label %139

116:                                              ; preds = %82
  %117 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %118 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %9, i32 0, i32 2
  store %struct.dm_integrity_c* %117, %struct.dm_integrity_c** %118, align 8
  %119 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %9, i32 0, i32 0
  %120 = call i32 @init_completion(i32* %119)
  %121 = call i64 @ATOMIC_INIT(i32 0)
  %122 = inttoptr i64 %121 to i8*
  %123 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %9, i32 0, i32 1
  store i8* %122, i8** %123, align 8
  %124 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sub i32 %125, %126
  %128 = call i32 @encrypt_journal(%struct.dm_integrity_c* %124, i32 1, i32 0, i32 %127, %struct.journal_completion* %9)
  %129 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %8, i32 0, i32 0
  %130 = call i32 @wait_for_completion_io(i32* %129)
  %131 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %132 = load i32, i32* @REQ_OP_WRITE, align 4
  %133 = load i32, i32* @REQ_FUA, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @rw_journal(%struct.dm_integrity_c* %131, i32 %132, i32 %133, i32 %134, i32 %135, %struct.journal_completion* %7)
  %137 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %9, i32 0, i32 0
  %138 = call i32 @wait_for_completion_io(i32* %137)
  br label %139

139:                                              ; preds = %116, %97
  br label %175

140:                                              ; preds = %69
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %151, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %147, %148
  %150 = call i32 @rw_section_mac(%struct.dm_integrity_c* %146, i32 %149, i32 1)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %141

154:                                              ; preds = %141
  %155 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %156 = load i32, i32* @REQ_OP_WRITE, align 4
  %157 = load i32, i32* @REQ_FUA, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @rw_journal(%struct.dm_integrity_c* %155, i32 %156, i32 %157, i32 %158, i32 %159, %struct.journal_completion* %7)
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %171, %154
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %11, align 4
  %165 = sub i32 %163, %164
  %166 = icmp ult i32 %162, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @rw_section_mac(%struct.dm_integrity_c* %168, i32 %169, i32 1)
  br label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %10, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %161

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %139
  %176 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %177 = load i32, i32* @REQ_OP_WRITE, align 4
  %178 = load i32, i32* @REQ_FUA, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %11, align 4
  %181 = sub i32 %179, %180
  %182 = call i32 @rw_journal(%struct.dm_integrity_c* %176, i32 %177, i32 %178, i32 0, i32 %181, %struct.journal_completion* %7)
  br label %183

183:                                              ; preds = %175, %60
  %184 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %7, i32 0, i32 0
  %185 = call i32 @wait_for_completion_io(i32* %184)
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @ATOMIC_INIT(i32) #1

declare dso_local i32 @encrypt_journal(%struct.dm_integrity_c*, i32, i32, i32, %struct.journal_completion*) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

declare dso_local i32 @rw_section_mac(%struct.dm_integrity_c*, i32, i32) #1

declare dso_local i32 @rw_journal(%struct.dm_integrity_c*, i32, i32, i32, i32, %struct.journal_completion*) #1

declare dso_local i64 @try_wait_for_completion(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
